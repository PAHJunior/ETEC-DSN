/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 27/04/2019
 * Time: 17:03
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace projetoTabuleiro
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
		void Button2Click(object sender, EventArgs e)
		{
			MainForm frm2 = new MainForm();
			count++;
			frm2.Text = "Tela " + count;
			frm2.StartPosition = FormStartPosition.CenterScreen;
			
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
		void Button1Click(object sender, EventArgs e)
		{
			for(int j = 0; j < 3; j++)
			{
				for(int i = 0; i < 10; i++)
				{
					Tabuleiro[] tale = new Tabuleiro[10];
						
					tale[i] = new Tabuleiro();
					tale[i].Top = 50 + 61 * j;
					tale[i].Left = 50 + 61 * i;
					tale[i].Parent = this;
					tale[i].Click += TaleClick;
				}	
			}
		}
		
		public void TaleClick(object sender, EventArgs e)
		{
			Tabuleiro tale = sender as Tabuleiro;
			tale.BackColor = Color.Red;
		}
	}
}
