/*
 * Created by SharpDevelop.
 * User: pahju
 * Date: 26/05/2019
 * Time: 13:36
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace projeto_Jogo
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
		
		Cenario[,] cenario = new Cenario[10,10];
		Cenario[,] paleta = new Cenario[3,10];
		
		void CriarMapaToolStripMenuItemClick(object sender, EventArgs e)
		{	
			
			PaletaCenario frm = new PaletaCenario();
			
			Panel p1 = new Panel();
			p1.BackColor = Color.Gray;
//			900x600
			p1.Width = 900;
			p1.Height = 600;
			p1.Parent = frm;
			
			
			
//			Gerando o mapa
			for(int j = 0; j < 10; j++)
			{
				
				for(int i = 1; i < 10; i++)
				{
					cenario[j,i] = new Cenario();
					cenario[j,i].Parent = p1;
					cenario[j,i].Top = 30 + 52 * j;
					cenario[j,i].Left = -30 + 52 * i;
					cenario[j,i].Load("./imagens/1.png");
					cenario[j,i].Click += pintarMapa;
				}
			}
			
			
//			gerar paleta do mapa
			int aux = 1;
			for(int j = 0; j < 3; j++)
			{
				
				for(int i = 0; i < 10; i++)
				{
					paleta[j,i] = new Cenario();
					paleta[j,i].Parent = p1;
					paleta[j,i].Top = 30 + 52 * i;
					paleta[j,i].Left = 700 + 52 * j;
					paleta[j,i].Load("./imagens/"+(aux)+".png");
					paleta[j,i].Click += selecionarMapa;
					aux++;
				}
			}
			frm.Height = 600;
			frm.Width = 900;
			frm.Visible = true;
		}
		
		
		void pintarMapa(object sender, EventArgs e)
		{
			PictureBox pb = sender as PictureBox;
			pb.Load("./imagens/30.png");
		}
		
		
		void selecionarMapa(object sender, EventArgs e)
		{
			PictureBox pb = sender as PictureBox;
//			src = pb.Image
		}
		
		
		void IniciarToolStripMenuItemClick(object sender, EventArgs e)
		{
			
		}
	}
}
