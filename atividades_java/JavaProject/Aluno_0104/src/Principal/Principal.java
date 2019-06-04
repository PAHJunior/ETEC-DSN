package Principal;

import java.awt.Color;

import javax.swing.JFrame;

public class Principal extends JFrame{
	/**
	 * 
	 */
	private Painel painel;
	
	private static final long serialVersionUID = 7248608076694096571L;
	public Principal(String titulo) {
		super(titulo);
		setLayout(null);
		this.setSize(500, 500);
		this.setVisible(true);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		this.painel = new Painel("Teste");
		this.painel.setSize(100, 100);
		this.painel.setBackground(Color.RED);
		this.painel.setLocation(10,10);

		this.painel.setVisible(true);
		this.add(this.painel);

	}
	public static void main(String args[]) {
		new Principal("Julia");
	}
}
