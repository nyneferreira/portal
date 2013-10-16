package openid;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.openid4java.OpenIDException;
import org.openid4java.consumer.ConsumerException;
import org.openid4java.consumer.ConsumerManager;
import org.openid4java.consumer.VerificationResult;
import org.openid4java.discovery.DiscoveryInformation;
import org.openid4java.discovery.Identifier;
import org.openid4java.message.AuthRequest;
import org.openid4java.message.AuthSuccess;
import org.openid4java.message.MessageException;
import org.openid4java.message.ParameterList;
import org.openid4java.message.ax.AxMessage;
import org.openid4java.message.ax.FetchRequest;
import org.openid4java.message.ax.FetchResponse;



public class Consumer{
    // the authentication responses from the OpenID provider
    private static String GOOGLE_USER_SUPPLIED = "https://www.google.com/accounts/o8/id";

    private static final String GOOGLE_ENDPOINT = "https://www.google.com";
    private static final String YAHOO_ENDPOINT = "https://me.yahoo.com"; 
	
    public ConsumerManager manager;

    public Consumer() throws ConsumerException
    {
        manager = new ConsumerManager();
    }

    public ResultType authRequest(HttpServletRequest request, HttpServletResponse response, ServletContext servletContext) throws IOException{
        try{
        	// realm Ž a url da aplica‹o + porta ex: http://localhost:8080
    		String realm = getRealm(request);
    		// Definimos a url a qual o google dever‡ retornar ap—s autenticar o usu‡rio
    		String returnToUrl = new StringBuffer(realm).append(request.getContextPath()) + "/Autenticacao";
        	
    		// "descobre" o OpenID do fornecedor
            List discoveries = manager.discover(GOOGLE_USER_SUPPLIED);

            // Tentativa de se conectar com o provedor OpenID 
            DiscoveryInformation discovered = manager.associate(discoveries);

            // Obtem a requisicaoo de autorizacao que o servidor mandada para o provedor OpenID 
            AuthRequest authReq = manager.authenticate(discovered, returnToUrl);
            
            // Informa quais atributos deveraoo ser 'requeridos'
            FetchRequest fetch = mountFetchRequest(); 
            authReq.addExtension(fetch);
            
            authReq.setRealm(realm);
            
            // coloca o objeto discovered na sessao do usu‡rio
            request.getSession().setAttribute("discovered", discovered);
            request.getSession().setAttribute("checkResponse", true);
            
            // Encaminha para a pagina de autenticacaoo do google
            response.sendRedirect(authReq.getDestinationUrl(true));
        }
        catch (OpenIDException e){
          e.printStackTrace();
		}

        return ResultType.REDIRECT_TO_OPENID_PROVIDER_FAILURE;
    }

    public ResultType verifyResponse(HttpServletRequest httpReq){
        try{
            // extrai os parametros que vem do HTTP request do OpenID provider.
            ParameterList response = new ParameterList(httpReq.getParameterMap());

           
            DiscoveryInformation discovered = (DiscoveryInformation) httpReq.getSession().getAttribute("discovered");

            // Extrai os parametros da url
            StringBuffer receivingURL = httpReq.getRequestURL();
            String queryString = httpReq.getQueryString();
            if (queryString != null && queryString.length() > 0){
                receivingURL.append("?").append(httpReq.getQueryString());
            }

            // Valida o response, verificar se o ConsumerManager e o mesmo que efetuou o request
            VerificationResult verification = manager.verify(receivingURL.toString(), response, discovered);

            // Analisa o resultado da verificacaoo e extrai o identificador de verificacao
            Identifier verified = verification.getVerifiedId();
            if (verified != null){
                AuthSuccess authSuccess = (AuthSuccess) verification.getAuthResponse();

                if (authSuccess.hasExtension(AxMessage.OPENID_NS_AX)){
                	// Extrai os atributos que fizemos a requisicao
                    FetchResponse fetchResp = (FetchResponse) authSuccess.getExtension(AxMessage.OPENID_NS_AX);

                    Map userAttributes = fetchResp.getAttributes();

                    User user = new User();
                    user.setEmail(userAttributes.get("email").toString());
                    String nome = userAttributes.get("firstName") + " "+ userAttributes.get("lastName");
                    user.setName(removeBrackets(nome));
                    
                    // Coloca o usu‡rio na sess‹o
                    httpReq.getSession().setAttribute("user", user);
                }

                return ResultType.AUTH_SUCCESS;  // success
            }
        }catch (OpenIDException e){
            e.printStackTrace();
        }

        httpReq.getSession().removeAttribute("checkResponse");
        return ResultType.AUTH_FAILURE;
    }
    
	private FetchRequest mountFetchRequest() throws MessageException {
		FetchRequest fetch = FetchRequest.createFetchRequest(); 
		if (GOOGLE_USER_SUPPLIED.startsWith(GOOGLE_ENDPOINT)) 
		{ 
		        fetch.addAttribute("email", "http://axschema.org/contact/email", true); 
		        fetch.addAttribute("firstName", "http://axschema.org/namePerson/first", true); 
		        fetch.addAttribute("lastName", "http://axschema.org/namePerson/last", true); 
		} 
		else if (GOOGLE_USER_SUPPLIED.startsWith(YAHOO_ENDPOINT)) 
		{ 
		        fetch.addAttribute("email", "http://axschema.org/contact/email", true); 
		        fetch.addAttribute("fullname", "http://axschema.org/namePerson", true); 
		}
		return fetch;
	}

	private String getRealm(HttpServletRequest request) {
		StringBuffer realmBuf = new StringBuffer(request.getScheme()).append("://").append(request.getServerName());

		if ((request.getScheme().equalsIgnoreCase("http") && request.getServerPort() != 80)
				|| (request.getScheme().equalsIgnoreCase("https") && request.getServerPort() != 443)) {
			realmBuf.append(":").append(request.getServerPort());
		}
		return realmBuf.toString();
	}
    
    private String removeBrackets(String s){
    	return s.replaceAll("\\[|\\]",  "");
    }
}
