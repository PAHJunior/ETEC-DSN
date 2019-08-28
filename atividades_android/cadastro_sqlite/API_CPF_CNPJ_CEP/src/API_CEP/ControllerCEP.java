package API_CEP;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;

import API_CNPJ.ModelCNPJ;

public class ControllerCEP {
	public static void main(String[] args) {
		
		try {
			String url = "https://ws.hubdodesenvolvedor.com.br/v2/cep3/?cep=06806170&token=61531765lLINEgTDfJ111093736";
			
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
		    
		    ModelCEP modelcep= gson.fromJson(content, ModelCEP.class);
		    
		    // Print na resposta da requisição
		    System.out.println( content );
		    
		    System.out.println( "Seu CEP é " + modelcep.getResult().getCep() );
		             
		} catch (ClientProtocolException e) {
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {

		}
	}
}
