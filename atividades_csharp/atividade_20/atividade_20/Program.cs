/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 01/09/2018
 * Time: 00:26
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace atividade_20
{
	class Program
	{
		public static void Main(string[] args)
		{
			int[] regFunHack = new int[10];
			int n = 1;
			
			while (n <= 9){
				Console.WriteLine("Digite o "+n+" digito do funcionario");
				regFunHack[n] = int.Parse(Console.ReadLine());
				n++;
			}
			
			Console.WriteLine("Registro Hackeado "+regFunHack[1]+regFunHack[2]+regFunHack[3]+regFunHack[4]+regFunHack[5]+regFunHack[6]+regFunHack[7]+regFunHack[8]+regFunHack[9]);
			Console.WriteLine("Registro Original "+regFunHack[8]+regFunHack[5]+regFunHack[3]+regFunHack[9]+regFunHack[2]+regFunHack[7]+regFunHack[6]+regFunHack[1]+regFunHack[4]);
			
			//regFunHack[1], regFunHack[2], regFunHack[3], regFunHack[4], regFunHack[5], regFunHack[6], regFunHack[7], regFunHack[8], regFunHack[9]
			
			Console.ReadKey(true);
		}
	}
}