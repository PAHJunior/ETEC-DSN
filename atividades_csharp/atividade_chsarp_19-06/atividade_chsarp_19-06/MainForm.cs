/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 19/06/2019
 * Time: 19:06
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace atividade_chsarp_19_06
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		public MainForm()
		{
			//
			// The InitializeComponent() call is required for Windows Forms designer support.
			//
			InitializeComponent();
			textBox1.Text = "veiculosIn.txt";
		}
		
	
		
		void Button1Click(object sender, EventArgs e)
		{
			richTextBox1.LoadFile(textBox1.Text, RichTextBoxStreamType.PlainText);
		}
		
		void Button2Click(object sender, EventArgs e)
		{
			richTextBox1.SaveFile("numerosOut.txt", RichTextBoxStreamType.PlainText);
		}
	
		
		void Button3Click(object sender, EventArgs e)
		{
			String textoTodo = richTextBox1.Text;
			String[] linhas = textoTodo.Split('\n');
			String resposta = "";
			double mediaTotal = 0;
			double media;
			for(int i = 0; i < linhas.Length; i++){
				String[] dados = linhas[i].Split(' ');
				media = Double.Parse(dados[1]) / Double.Parse(dados[2]);
				mediaTotal += media;
			}
			Double mediaGeral = mediaTotal / linhas.Length;
			
			for(int i = 0; i < linhas.Length; i++){
				String[] dados = linhas[i].Split(' ');
				media = Double.Parse(dados[1]) / Double.Parse(dados[2]);
				if(media < mediaGeral){
					resposta += dados[0]  + "\n";	
				}
			}
			richTextBox2.Text = resposta;
			richTextBox2.SaveFile("numerosOut.txt", RichTextBoxStreamType.PlainText);
		}
	}
}
