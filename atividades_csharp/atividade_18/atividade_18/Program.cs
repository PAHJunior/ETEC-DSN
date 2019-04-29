/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 30/08/2018
 * Time: 14:19
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace atividade_18
{
	class Program
	{
		public static void Main(string[] args)
		{
			// PRIMEIRO BRINQUEDO
			Console.Write("PRIMEIRO BRINQUEDO ");
			Console.WriteLine(" ");
			Console.Write("Digite o nome do brinquedo ");
			string nomeBrin1 = Console.ReadLine();
			
			Console.Write("Digite o preço R$");
			double precoBrin1 = double.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque no inicio do mês ");
			int qtdInicioMes1 = int.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque do final do mês ");
			int qtdFimMes1 = int.Parse(Console.ReadLine());
			Console.WriteLine(" ");
			Console.WriteLine(" ");
			
			
			
			// SEGUNDO BRINQUEDO
			Console.Write("SEGUNDO BRINQUEDO ");
			Console.WriteLine(" ");
			Console.Write("Digite o nome do brinquedo ");
			string nomeBrin2 = Console.ReadLine();
			
			Console.Write("Digite o preço R$");
			double precoBrin2 = double.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque no inicio do mês ");
			int qtdInicioMes2 = int.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque do final do mês ");
			int qtdFimMes2 = int.Parse(Console.ReadLine());
			Console.WriteLine(" ");
			Console.WriteLine(" ");
			
			
			
			// TERCEIRO BRINQUEDO
			Console.Write("TERCEIRO BRINQUEDO ");
			Console.WriteLine(" ");
			Console.Write("Digite o nome do brinquedo ");
			string nomeBrin3 = Console.ReadLine();
			
			Console.Write("Digite o preço R$");
			double precoBrin3 = double.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque no inicio do mês ");
			int qtdInicioMes3 = int.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque do final do mês ");
			int qtdFimMes3 = int.Parse(Console.ReadLine());
			Console.WriteLine(" ");
			Console.WriteLine(" ");
			
			
			
			
			// QUARTO BRINQUEDO
			Console.Write("QUARTO BRINQUEDO ");
			Console.WriteLine(" ");
			Console.Write("Digite o nome do brinquedo ");
			string nomeBrin4 = Console.ReadLine();
			
			Console.Write("Digite o preço R$");
			double precoBrin4 = double.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque no inicio do mês ");
			int qtdInicioMes4 = int.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque do final do mês ");
			int qtdFimMes4 = int.Parse(Console.ReadLine());
			Console.WriteLine(" ");
			Console.WriteLine(" ");
			
			
			
			
			// QUINTO BRINQUEDO
			Console.Write("QUINTO BRINQUEDO ");
			Console.WriteLine(" ");
			Console.Write("Digite o nome do brinquedo ");
			string nomeBrin5 = Console.ReadLine();
			
			Console.Write("Digite o preço R$");
			double precoBrin5 = double.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque no inicio do mês ");
			int qtdInicioMes5 = int.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque do final do mês ");
			int qtdFimMes5 = int.Parse(Console.ReadLine());
			Console.WriteLine(" ");
			Console.WriteLine(" ");
			
			
			
			// SEXTO BRINQUEDO
			Console.Write("SEXTO BRINQUEDO ");
			Console.WriteLine(" ");
			Console.Write("Digite o nome do brinquedo ");
			string nomeBrin6 = Console.ReadLine();
			
			Console.Write("Digite o preço R$");
			double precoBrin6 = double.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque no inicio do mês ");
			int qtdInicioMes6 = int.Parse(Console.ReadLine());
			
			Console.Write("Digite a quantidade em estoque do final do mês ");
			int qtdFimMes6 = int.Parse(Console.ReadLine());
			Console.WriteLine(" ");
			Console.WriteLine(" ");
			
			
			
			
			
			
			
			Console.Clear();
			// RELATORIO DE VENDAS
			
			Console.WriteLine("RELATORIO DE VENDAS");
			Console.WriteLine(" ");
			
			
			// RELATORIO DO PRIMEIRO BRINQUEDO
			Console.WriteLine("BRINQUEDO 1 - "+ nomeBrin1);
			Console.WriteLine("O Preço do brinquedo 1 é de R$ "+precoBrin1);
			int unidadesVendidas1 = qtdInicioMes1 - qtdFimMes1;
			Console.WriteLine("A Quantiade de unidades no inicio do mês era de"+ qtdInicioMes1+" vendidas foi de "+unidadesVendidas1+" unidades");
			double valorArrecadado1 = unidadesVendidas1 * precoBrin1;
			Console.WriteLine("O Valor arrecado foi de R$ "+valorArrecadado1);
			Console.WriteLine(" ");
			
			Console.WriteLine("----------------------------------------");
			
			Console.WriteLine(" ");
			
			// RELATORIO DO SEGUNDO BRINQUEDO
			Console.WriteLine("BRINQUEDO 2 - "+ nomeBrin2);
			Console.WriteLine("O Preço do brinquedo 2 é de R$ "+precoBrin2);
			int unidadesVendidas2 = qtdInicioMes2 - qtdFimMes2;
			Console.WriteLine("A Quantiade de unidades no inicio do mês era de "+ qtdInicioMes2+" vendidas foi de "+unidadesVendidas2+" unidades");
			double valorArrecadado2 = unidadesVendidas2 * precoBrin2;
			Console.WriteLine("O Valor arrecado foi de R$ "+valorArrecadado2);
			Console.WriteLine(" ");
			
			Console.WriteLine("----------------------------------------");
			
			Console.WriteLine(" ");
			
			// RELATORIO DO TERCEIRO BRINQUEDO
			
			Console.WriteLine("BRINQUEDO 3 - "+ nomeBrin3);
			Console.WriteLine("O Preço do brinquedo 3 é de R$ "+precoBrin3);
			int unidadesVendidas3 = qtdInicioMes3 - qtdFimMes3;
			Console.WriteLine("A Quantiade de unidades no inicio do mês era de "+ qtdInicioMes3+" vendidas foi de "+unidadesVendidas3+" unidades");
			double valorArrecadado3 = unidadesVendidas3 * precoBrin3;
			Console.WriteLine("O Valor arrecado foi de R$ "+valorArrecadado3);
			Console.WriteLine(" ");
			
			Console.WriteLine("----------------------------------------");
			
			Console.WriteLine(" ");
			
			// RELATORIO DO QUARTO BRINQUEDO
			
			Console.WriteLine("BRINQUEDO 4 - "+ nomeBrin4);
			Console.WriteLine("O Preço do brinquedo 4 é de R$ "+precoBrin4);
			int unidadesVendidas4 = qtdInicioMes4 - qtdFimMes4;
			Console.WriteLine("A Quantiade de unidades no inicio do mês era de "+ qtdInicioMes4+" vendidas foi de "+unidadesVendidas4+" unidades");
			double valorArrecadado4 = unidadesVendidas4 * precoBrin4;
			Console.WriteLine("O Valor arrecado foi de R$ "+valorArrecadado4);
			Console.WriteLine(" ");
			
			Console.WriteLine("----------------------------------------");
			
			Console.WriteLine(" ");
			
			// RELATORIO DO QUINTO BRINQUEDO
			
			Console.WriteLine("BRINQUEDO 5 - "+ nomeBrin5);
			Console.WriteLine("O Preço do brinquedo 5 é de R$ "+precoBrin5);
			int unidadesVendidas5 = qtdInicioMes5 - qtdFimMes5;
			Console.WriteLine("A Quantiade de unidades no inicio do mês era de "+ qtdInicioMes5+" vendidas foi de "+unidadesVendidas5+" unidades");
			double valorArrecadado5 = unidadesVendidas5 * precoBrin5;
			Console.WriteLine("O Valor arrecado foi de R$ "+valorArrecadado5);
			Console.WriteLine(" ");
			
			Console.WriteLine("----------------------------------------");
			
			Console.WriteLine(" ");
			
			// RELATORIO DO SEXTO BRINQUEDO
			
			Console.WriteLine("BRINQUEDO 6 - "+ nomeBrin6);
			Console.WriteLine("O Preço do brinquedo 6 é de R$ "+precoBrin6);
			int unidadesVendidas6 = qtdInicioMes6 - qtdFimMes6;
			Console.WriteLine("A Quantiade de unidades no inicio do mês era de "+ qtdInicioMes6+" vendidas foi de "+unidadesVendidas6+" unidades");
			double valorArrecadado6 = unidadesVendidas6 * precoBrin6;
			Console.WriteLine("O Valor arrecado foi de R$ "+valorArrecadado6);
			Console.WriteLine(" ");
			
			Console.WriteLine("----------------------------------------");
			
			Console.WriteLine(" ");
			
			
			
			
			Console.ReadKey(true);
		}
	}
}