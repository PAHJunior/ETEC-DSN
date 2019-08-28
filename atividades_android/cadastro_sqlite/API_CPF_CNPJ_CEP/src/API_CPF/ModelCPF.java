package API_CPF;

import API_CNPJ.ResultCNPJ;

public class ModelCPF {

	private boolean status;
	private ResultCPF result;
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public ResultCPF getResult() {
		return result;
	}
	public void setResult(ResultCPF result) {
		this.result = result;
	}
}
