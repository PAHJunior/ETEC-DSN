/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 17/11/2018
 * Time: 03:49
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace Color_30x30
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
			
			//
			// TODO: Add constructor code after the InitializeComponent() call.
			//
		}
		Color cor; //DEFININDO VARIAVEL GLOBAL DE COR
		
		//CRIANDO O METODO DE PINTAR
		void pintarClick(object sender, EventArgs e)
		{
			Panel painel = sender as Panel;
			painel.BackColor = cor;
		}
		
		//CRIANDO O METODO DE SELECIONAR A COR PARA PINTAR
		void selecionarCor(object sender, EventArgs e)
		{
			Panel painel = sender as Panel;
			cor = painel.BackColor;
		}
		
		//BOTAO DE LIMPAR
		void Button1Click(object sender, EventArgs e)
		{
			Panel[] pn = new Panel[660];
			
			for(int i=0; i < 660; i++)
			{
				pn[i] = this.Controls["panel"+(i+1).ToString()] as Panel;
				pn[i].BackColor = this.BackColor;
				
			}
			richTextBox1.Clear();
		}
		
		//BOTAO DE ABRIR
		void Button2Click(object sender, EventArgs e)
		{
			Panel[] painel = new Panel[660];
			
			if(openFileDialog1.ShowDialog() == DialogResult.OK)
			{
				
				richTextBox1.LoadFile(openFileDialog1.FileName, RichTextBoxStreamType.PlainText);
				
				for(int i = 0; i < 660; i++){
					painel[i] = this.Controls["panel"+(i+1).ToString()] as Panel;					
					String linha = richTextBox1.Lines[i];					
					String[] campo = linha.Split('@');
					painel[i].BackColor = Color.FromArgb(int.Parse(campo[0]));
				}
			}
		}
		
		//SALVAR
		void Button3Click(object sender, EventArgs e)
		{
			Panel[] painel = new Panel[660];
			int[] c = new int[660];
			richTextBox1.Clear();
			
			for(int i = 0; i < 660; i++){
				painel[i] = this.Controls["panel"+(i+1).ToString()] as Panel; //convertendo para Panel
				cor = painel[i].BackColor;
				c[i] = cor.ToArgb();
				string linha = c[i].ToString()+"@"+"\n";
				richTextBox1.AppendText(linha);	
			}
			
			
			if(textBox1.Text == ""){
				MessageBox.Show("Coloque um nome para o arquivo");
				textBox1.Focus();
				textBox1.BackColor = Color.LightBlue;
			}else {
				String nome = textBox1.Text+".txt";
				saveFileDialog1.FileName = nome;
				richTextBox1.SaveFile(nome, RichTextBoxStreamType.PlainText);
				MessageBox.Show("Salvo com sucesso");
				textBox1.BackColor = Color.LightGray;
				textBox1.Clear();
			}
		}
		
	}
}
