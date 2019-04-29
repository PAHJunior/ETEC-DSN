/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 25/08/2018
 * Time: 22:00
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace Atividade_16
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Digite o numero de sua conta corrente");
			Console.WriteLine("Digite o primeiro digito");
			int digito1 = int.Parse(Console.ReadLine());
			
			Console.WriteLine("Digite o segundo digito");
			int digito2 = int.Parse(Console.ReadLine());
			
			Console.WriteLine("Digite o terceiro digito");
			int digito3 = int.Parse(Console.ReadLine());
			
			Console.WriteLine("Digite o quarto digito");
			int digito4 = int.Parse(Console.ReadLine());
			
			Console.WriteLine("Digite o quinto digito");
			int digito5 = int.Parse(Console.ReadLine());			
			
			Console.WriteLine("O numero da conta corrente é "+ digito1 + digito2 + digito3 + digito4 + digito5);
			
			int verificador = ((1*digito1) + (2*digito2) + (3*digito3) + (4*digito4) + (5*digito5));
			int primeiroNumero = Convert.ToInt32(verificador.ToString().Substring(0, 1));
			Console.WriteLine("A soma do produto é "+verificador);
			Console.WriteLine("Portando o digito verificador é "+primeiroNumero);
			
			Console.ReadKey(true);
			
			
			
			
		}
	}
}