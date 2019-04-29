/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 26/08/2018
 * Time: 00:29
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace atividade_17
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("NETUNO & SEREIAS");
			Console.WriteLine("");
			Console.WriteLine("Qual é a ALTURA da pscina em METROS");
			double altura = double.Parse(Console.ReadLine());
			
			Console.WriteLine("Qual é a LARGURA da pscina em METROS");
			double largura = double.Parse(Console.ReadLine());
			
			Console.WriteLine("Qual é a COMPRIMENTO da pscina em METROS");
			double comprimento = double.Parse(Console.ReadLine());
			
			
			
			
			/*volume da piscina em dm^3.Como o exercício coloca as dimensões
 			 *da piscina em metros (m) é necessário transformá-las para decímetro (dm). 
			 * Então, como 1m equivale a 10 dm */
			double volume = ((comprimento*10) * (largura*10) * (altura*10));
			
			
			
			//Para saber a quantidade de baldes, é só dividir o volume da piscina pelo do balde.
			double balde = volume / 3.8;
				
			Console.WriteLine("A quantidade de baldes será de "+balde);
			Console.ReadKey(true);
			
		}
	}
}