package tiposPrimitivos;

public class Professor {
	private String nome;
	private static int contador = 0;
	
	
	public Professor(String nome) {
		this.nome = nome;
		this.contador++;
	}
	
	public Professor() {
		
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getContador() {
		return contador;
	}
	public void setContador(int contador) {
		Professor.contador = contador;
	}	
	
}
