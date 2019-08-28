package API_CPF;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;

import API_CEP.ModelCEP;

public class ControllerCPF {
	public static void main(String[] args) {
		
		try {
			String url = "https://ws.hubdodesenvolvedor.com.br/v2/cpf/?cpf=57980206819&data=25/8/1979&token=61531765lLINEgTDfJ111093736";
			
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
		    
		    ModelCPF modelCPF= gson.fromJson(content, ModelCPF.class);
		    
		    // Print na resposta da requisição
		    System.out.println( content );
		    
		    System.out.println( "Seu nome é " + modelCPF.getResult().getNome_da_pf() );
		             
		} catch (ClientProtocolException e) {
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {

		}
	}
}
