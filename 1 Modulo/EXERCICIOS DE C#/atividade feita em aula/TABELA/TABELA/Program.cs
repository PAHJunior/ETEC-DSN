/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 22/08/2018
 * Time: 19:27
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace TABELA
{
	class Program
	{
		public static void Main(string[] args)
		{
			int t = 0 , k = 0, c = -2;
			float g=4f;
			t=3;
			Console.WriteLine("t "+t+ "k "+k+ "c "+c+ "g "+g);
			k= t*2;
			Console.WriteLine("t "+t+ "k "+k+ "c "+c+ "g "+g);
			c= k*t-3;
			Console.WriteLine("t "+t+ "k "+k+ "c "+c+ "g "+g);
			k= k*2;	
			Console.WriteLine("t "+t+ "k "+k+ "c "+c+ "g "+g);
			g= t+k+c/3;
			Console.WriteLine("t "+t+ "k "+k+ "c "+c+ "g "+g);
			Console.ReadKey();
		}
	}
}