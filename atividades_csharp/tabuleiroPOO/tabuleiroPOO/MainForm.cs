/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 10/04/2019
 * Time: 21:29
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace tabuleiroPOO
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		public MainForm()
		{
			InitializeComponent();
		}
		int count = 0;
		void Button1Click(object sender, EventArgs e)
		{
			Label lbl = label1;
		}
		
		void Button2Click(object sender, EventArgs e)
		{
			Form1 frm2 = new Form1();
			count++;
			frm2.Text = "Tela " + count;
			frm2.StartPosition = FormStartPosition.CenterScreen;
			frm2.label2.Text = "Olá Mundo";
			
			Button btn = new Button();
			btn.Parent = frm2;
			btn.Left = 200;
			btn.Top = 200;
			btn.Click += BtnClick;
			
			Button btn2 = new Button();
			btn.Parent = frm2;
			btn.Left = 200;
			btn.Top = 230;
			btn.Click += BtnClick;
			
			frm2.ShowDialog();
		}
		
		private void BtnClick(object sender, EventArgs e)
		{
			Button bt = sender as Button;
			bt.Text = "Fui Clicado";
		}
		
		void Button3Click(object sender, EventArgs e)
		{
			for(int j = 0; j < 3; j++)
			{
				for(int i = 0; i < 10; i++){
					Tabuleiro[] tale = new Tabuleiro[i];			
					tale[i] = new Tabuleiro();
					tale[j].Top = 50 + 61 * i;
					tale[i].Left = 50 + 61 * i;
					tale[i].Parent = this;
				}
			}
		}
	}
}
