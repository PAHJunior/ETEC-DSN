package aula;

import java.util.ArrayList;

import javax.swing.JOptionPane;

public class Media {

	public static void main(String[] args) {
		
		/*
		Principal p [] = new Principal[5];
		Double media[] = new Double[5];
		for(int i = 0; i < p.length; i++) {
			Principal principal = new Principal();
			principal.calcularKm();
			principal.calcularCombustivel();
			principal.getResultado();
			p[i] = principal;
			media[i] = principal.media();
		}
		
		for(int i = 0; i < media.length; i++) {
			System.out.println(media[i]);
		}*/
		
		ArrayList <Principal> list = new ArrayList();
		String x = JOptionPane.showInputDialog("Informe a quantidade");
		int y = Integer.parseInt(x);
		
		while (y > 0) {
			Principal p = new Principal();
			p.calcularCombustivel();
			p.calcularKm();
			p.getResultado();
			list.add(p);
			y--;
		}
		
		for(int i = 0; i< list.size(); i++) {
			System.out.println(list.get(i).media());
		}
		
	}

}
