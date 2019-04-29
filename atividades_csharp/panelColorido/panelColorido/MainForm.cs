/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 14/11/2018
 * Time: 21:09
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace panelColorido
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
		Color cor;
		
		void PintarClick(object sender, EventArgs e)
		{
			Panel painel = sender as Panel;
			painel.BackColor = cor;
		}
		
		void SelecionarCor(object sender, EventArgs e)
		{
			Panel painel = sender as Panel;
			cor = painel.BackColor;
		}
		
		/*LIMPAR*/
		void Button1Click(object sender, EventArgs e)
		{
			Panel[] pn = new Panel[48];
			
			for(int i=0; i < 48; i++)
			{
				pn[i] = this.Controls["panel"+(i+1).ToString()] as Panel;
				pn[i].BackColor = this.BackColor;
				
			}
			richTextBox1.Clear();
		}
		
		
		void pegarRGB()
		{
//			Panel[] painel = {panel1, panel2,  panel3, panel4, panel5, panel6, panel7, panel8,  panel9, panel10, panel11, panel12, panel13, panel14, panel15, panel16, panel17, panel18, panel19, panel20, panel21, panel22, panel23, panel24, panel25, panel26, panel27, panel28, panel29, panel30, panel31, panel32, panel33, panel34, panel35, panel36, panel37, panel38, panel39, panel40, panel41,  panel42, panel43, panel44, panel45, panel46, panel47, panel48};
//			painel[i].BackColor = Color.FromArgb(c);
			
			Panel[] painel = new Panel[48];
			//int[] c = new int[48];
			int[] c = new int[48];
			
			
			for(int i = 0; i < 48; i++){
				
				painel[i] = this.Controls["panel"+(i+1).ToString()] as Panel; //convertendo para Panel
				cor = painel[i].BackColor;
				c[i] = cor.ToArgb();
				string linha = /*painel[i].Name.Substring(5) +*/ c[i].ToString()+"@"+"\n";
				richTextBox1.AppendText(linha);	
			}
		}
		
		/*BOTÃO DE SALVAR */
		void Button2Click(object sender, EventArgs e)
		{						
			pegarRGB();
			
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
		
		
		void abrirDesenho()
		{
			Panel[] painel = new Panel[48];
			
			if(openFileDialog1.ShowDialog() == DialogResult.OK)
			{
				
				richTextBox1.LoadFile(openFileDialog1.FileName, RichTextBoxStreamType.PlainText);
				
				for(int i = 0; i < 48; i++){
					painel[i] = this.Controls["panel"+(i+1).ToString()] as Panel;					
					String linha = richTextBox1.Lines[i];					
					String[] campo = linha.Split('@');
					painel[i].BackColor = Color.FromArgb(int.Parse(campo[0]));
				}
			}
		}
		
		
		/*BOTAO ABRIR*/
		void Button3Click(object sender, EventArgs e)
		{
			abrirDesenho();
		}
	}
}
