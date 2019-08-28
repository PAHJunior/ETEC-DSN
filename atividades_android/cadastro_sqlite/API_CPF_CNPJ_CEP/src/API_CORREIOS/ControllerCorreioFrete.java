package API_CORREIOS;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;

public class ControllerCorreioFrete {
	public static void main(String[] args) {
		
		try {
			
			String servico = "calculoFrete";
			String cepOrigem = "06764250";
			String cepDestino = "06803911";
			String altura = "10";
			String largura = "11";
			String peso = "1";
			String comprimento = "17";
			
			//Caixa/pacote: 1 | Rolo/Prisma: 2 | Envelope: 3
			String formato = "1";
			//Codigo de Serviços dos Correios. SEDEX: 40010 | SEDEX 10: 40215 | SEDEX a Cobrar: 40045 | SEDEX HOJE: 40290 | PAC: 41106 
			String tipoServico = "40010";
			String baseUrl = "https://ws.hubdodesenvolvedor.com.br/v2/correios/?";
			
			
			String url = baseUrl +
					"servico=" + servico +
					"&cepOrigem="+ cepOrigem +
					"&cepDestino=" + cepDestino +
					"&altura=" + altura +
					"&largura=" + largura +
					"&peso=" + peso +
					"&comprimento=" + comprimento +
					"&formato=" + formato +
					"&tipoServico=" + tipoServico +
					"&token=61531765lLINEgTDfJ111093736";
			
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
		    
		    ModelCorreioFrete modeloCorreioFrete = gson.fromJson(content, ModelCorreioFrete.class);
		    
		    // Print na resposta da requisição
		    System.out.println( content );
		    
		    System.out.println( "Valor total: " + modeloCorreioFrete.getResult().getValor_total() );
		             
		} catch (ClientProtocolException e) {
		    e.printStackTrace();
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {

		}
	}
}
