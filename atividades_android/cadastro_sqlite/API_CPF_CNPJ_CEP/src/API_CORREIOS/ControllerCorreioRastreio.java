package API_CORREIOS;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

public class ControllerCorreioRastreio {
	public static void main(String[] args) {
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			
			String url = "https://ws.hubdodesenvolvedor.com.br/v2/correios/?servico=rastreamento&codigo_rastreamento=OH390332523BR&token=61531765lLINEgTDfJ111093736";
			
			HttpClient client = HttpClientBuilder.create().build();
			HttpGet request = new HttpGet(url);
			request.addHeader("Accept", "application/json");
			request.addHeader("Content-type", "application/json");
			HttpResponse response = client.execute(request);
			// guardando a resposta
		    HttpEntity entity = response.getEntity();
		    
		    // Convertendo a resposta para string
		    String content = EntityUtils.toString(entity);
		    
		    ModelCorreioRastreio modelCorreioRastreio = mapper.readValue(content, ModelCorreioRastreio.class);
		    
		    
		    //Gson gson = new Gson();
		    
		    //ModelCorreioRastreio modelCorreioRastreio= gson.fromJson(content, ModelCorreioRastreio.class);
		    
		    // Print na resposta da requisição
		    
		    for(ResultCorreioRastreio i : modelCorreioRastreio.getResult()) {
				System.out.println("Status do pedido: " + i.getRetorno().toString());
			}
		             
		} catch (JsonParseException  e) {
		    e.printStackTrace();
		} catch (JsonMappingException  e) {
		    e.printStackTrace();
		} catch (IOException   e)  {
			e.printStackTrace();
		}
	}
}
