package API_CORREIOS;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ModelCorreioRastreio {
	private String message;
	private Boolean status;
	@JsonProperty(value = "return")
	private String retorno;
	private String imagem_status;
	
	private List<ResultCorreioRastreio> result = new ArrayList<ResultCorreioRastreio>();
	
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public List<ResultCorreioRastreio> getResult() {
		return result;
	}
	public void setResult(List<ResultCorreioRastreio> dados) {
		this.result = dados;
	}
	
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public String getRetorno() {
		return retorno;
	}
	public void setRetorno(String retorno) {
		this.retorno = retorno;
	}
	public String getImagem_status() {
		return imagem_status;
	}
	public void setImagem_status(String imagem_status) {
		this.imagem_status = imagem_status;
	}
	
}
