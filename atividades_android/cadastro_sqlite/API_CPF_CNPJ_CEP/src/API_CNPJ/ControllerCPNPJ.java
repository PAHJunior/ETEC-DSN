package API_CNPJ;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;

public class ControllerCPNPJ {

	public static void main(String[] args) {
		
		try {
			String url = "http://ws.hubdodesenvolvedor.com.br/v2/cnpj/?cnpj=10662230000170&token=61531765lLINEgTDfJ111093736";
			
			HttpClient client = HttpClientBuilder.create().build();
			HttpGet request = new HttpGet(url);
			request.addHeader("Accept", "application/json");
			request.addHeader("Content-type", "application/json");
			HttpResponse response = client.execute(request);
			// guardando a resposta
		    HttpEntity entity = response.getEntity();
		    
		    // Convertendo a resposta para string
		    String content = EntityUtils.toString(entity);
		    Gson gson = new Gson();
		    
		    ModelCNPJ modelCNPJ = gson.fromJson(content, ModelCNPJ.class);
		    
		    // Print na resposta da requisição
		    System.out.println( content );
		    
		    System.out.println( "Abertura " + modelCNPJ.getResult().getAbertura() );
		             
		} catch (ClientProtocolException e) {
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {

		}
	}
	
}
