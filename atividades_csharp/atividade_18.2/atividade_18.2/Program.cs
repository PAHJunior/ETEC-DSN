/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 31/08/2018
 * Time: 03:46
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace atividade_18._
{
	class Program
	{
		public static void Main(string[] args)
		{
			
			
			string[] nomeBrinquedo = new string[7];
			double[] preco = new double[7];
			double[] mesInicio =  new double[7];
			double[] mesFim = new double[7];
			
			int b = 1;
			//Digite os brinquedos.
			while (b <= 2){
				Console.WriteLine("Digite o Nome do "+b+" brinquedo ");
				nomeBrinquedo[b] = Console.ReadLine();			     
				
				Console.WriteLine("Digite o preço do "+b+" brinquedo");
				preco[b] = double.Parse(Console.ReadLine());
				
				Console.WriteLine("Digite a quantidade de estoque no inicio do Mês");
				mesInicio[b] = double.Parse(Console.ReadLine());
				
				Console.WriteLine("Digite do estoque ao final do Mês");
				mesFim[b] = double.Parse(Console.ReadLine());
				
				Console.Clear();
				b++;
			}
			
			//Mostre o relatorio sobre os brinquedos
			
			int r = 1;
			double[] uVendidas = new double[7];
			double[] vArrecadado =  new double[7];
			
			while (r <= 2){
				Console.WriteLine("O nome do brinquedo "+r+" é "+nomeBrinquedo[r] );
				Console.WriteLine("Preço R$ "+ preco[r]);
				uVendidas[r] = mesInicio[r] - mesFim[r];
				Console.WriteLine("Foi vendido "+uVendidas[r]+" unidades");
				vArrecadado[r] = uVendidas[r] * preco[r];
				Console.WriteLine("O valor arrecadado foi de R$ "+vArrecadado[r]);
				Console.WriteLine("");
				Console.WriteLine("");
				r++;
			}
			
			
			
			Console.ReadKey();
		}
	}
}