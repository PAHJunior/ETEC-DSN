package aula;

import javax.swing.JOptionPane;
import javax.xml.crypto.dsig.spec.HMACParameterSpec;

public class Principal {
	private Double km;
	private Double combustivel;
	private Double result;
	
	
	private void setKm(Double km) {
		this.km = km;
	}

	private void setCombustivel(Double combustivel) {
		this.combustivel = combustivel;
	}
	
	private void setResult(Double result) {
		this.result = result;
	}
	

	public Double getKm() {
		return this.km;
	}

	public Double getCombustivel() {
		return this.combustivel;
	}
	
	public Double media() {
		return this.result;	
	}

	public void calcularKm() {
		
		String km = JOptionPane.showInputDialog("Informe o KM rodado");
		if (km.isEmpty()) {
			return;
		}
		try {
			this.setKm(Double.parseDouble(km));
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro, valor informado invalido" + e);
			this.calcularKm();
		}
	}

	public void calcularCombustivel() {

		String combustivel = JOptionPane.showInputDialog("Informe o combustivel");
		if (combustivel.isEmpty()) {
			return;
		}

		try {
			this.setCombustivel(Double.parseDouble(combustivel));
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Erro, valor informado invalido" + e);
			this.calcularCombustivel();
		}
	}

	public void getResultado() {
		Double resultado = this.getKm() / this.getCombustivel();
		this.setResult(resultado);
		String result = "Gasto medio de " + this.getResult();
		JOptionPane.showMessageDialog(null, result);
	}
}
