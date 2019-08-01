/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 19/06/2019
 * Time: 22:09
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace atividade_bussula
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
			textBox1.Text = "bussolain.txt";
			
			//
			// TODO: Add constructor code after the InitializeComponent() call.
			//
		}
		
		void Button1Click(object sender, EventArgs e)
		{
			richTextBox1.LoadFile(textBox1.Text, RichTextBoxStreamType.PlainText);			
		}
		
		void Button2Click(object sender, EventArgs e)
		{
			int orientacao = 0;
			String textoTodo = richTextBox1.Text;
			String[] linhas = textoTodo.Split('\n');
			String resposta = "";
			for(int i = 0; i < linhas.Length; i++){
				String direcao = linhas[i];
				orientacao = 0;
				for(int x = 0; x < direcao.Length; x++){
					if(Equals("D",direcao[x].ToString())){
						orientacao--;
					}
					else if(Equals("E",direcao[x].ToString())){
						orientacao++;
					}
					
					if(orientacao > 3){
						orientacao = 0;
					}
					if(orientacao == -4){
						orientacao = 0;
					}	
				}
				
				if(orientacao == 0){
					resposta += "NORTE\n";
				}
				if(orientacao == 1){
					resposta += "LESTE\n";
				}
				if(orientacao == 2){
					resposta += "SUL\n";
				}
				if(orientacao == 3){
					resposta += "OESTE\n";
				}
				
				if(orientacao == -1){
					resposta += "OESTE\n";
				}
				if(orientacao == -2){
					resposta += "SUL\n";
				}
				if(orientacao == -1){
					resposta += "LESTE\n";
				}
			}
			richTextBox2.Text += resposta;
		}
	}
}
