package API_CORREIOS;

public class ResultCorreioFrete {
	private String servico;
	private String prazo_de_entrega;
	private String entrega_sabado;
	private String valor_total;
	

	public String getServico() {
		return servico;
	}
	public void setServico(String servico) {
		this.servico = servico;
	}
	public String getPrazo_de_entrega() {
		return prazo_de_entrega;
	}
	public void setPrazo_de_entrega(String prazo_de_entrega) {
		this.prazo_de_entrega = prazo_de_entrega;
	}
	public String getEntrega_sabado() {
		return entrega_sabado;
	}
	public void setEntrega_sabado(String entrega_sabado) {
		this.entrega_sabado = entrega_sabado;
	}
	public String getValor_total() {
		return valor_total;
	}
	public void setValor_total(String valor_total) {
		this.valor_total = valor_total;
	}
	
	
}
