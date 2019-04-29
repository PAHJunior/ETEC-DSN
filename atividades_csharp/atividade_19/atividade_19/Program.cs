/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 31/08/2018
 * Time: 23:58
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace atividade_19
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Digite a largura da parede");
			double largura = double.Parse(Console.ReadLine());
			Console.WriteLine("Digite o comprimento da parede");
			double comprimento = double.Parse(Console.ReadLine());
			
			double total = largura*comprimento;
			Console.WriteLine("O total de unidades de ceramicas será de "+total);
			double preco = total*60;
			Console.WriteLine("O preço a ser pago em m² será de R$"+preco);
			
			
			
			Console.ReadKey();
		}
	}
}