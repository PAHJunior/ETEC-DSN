package tiposPrimitivos;

public class Testa {

	public static void main(String args[]) {
		Professor p[] = new Professor[2];
		p[0] = new Professor("Paulo");
		p[1] = new Professor("Rebeca");
		
		
		for(int i = 0; i < p.length; i++) {
			System.out.println(p[i].getNome());
		}
	}
}
