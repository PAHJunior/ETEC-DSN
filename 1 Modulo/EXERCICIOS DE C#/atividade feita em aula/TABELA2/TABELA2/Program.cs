/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 22/08/2018
 * Time: 19:29
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace TABELA2
{
	class Program
	{
		public static void Main(string[] args)
		{
			float x= 0.5f, y=2.0f, r=0.333f;
			x = x+y;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			y=2*y;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			r=x*y;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			x=x+x;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			y=r-y;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			r=(x*y)/r;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			x=x/2;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			y=y/r;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);
			r=2*x-y*r;
			Console.WriteLine("x "+x+ " y "+y+ "r "+ r);;
			
			Console.ReadKey();
		}
	}
}