/*
 * Created by SharpDevelop.
 * User: ALUNO.ETEC
 * Date: 29/05/2019
 * Time: 20:06
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;

namespace jogo_projeto
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
				
		Tile[,] tile = new Tile[10,10];
		Soldado[,] soldado = new Soldado[2,8];
		
		Soldado soldadoClicado = new Soldado();
//		bool selecionado = false;
//		int vez = 0;
		void IniciarToolStripMenuItemClick(object sender, EventArgs e)
		{
			for(int j = 0; j < 10; j++)
			{
				
				for(int i = 0; i < 10; i++)
				{
					tile[i,j] = new Tile();
					tile[i,j].Parent = this;
					tile[i,j].Top = 50 + j * 60;
					tile[i,j].Left = 20 + i * 60;
					tile[i,j].Posicao = new Point(i,j);
					tile[i,j].Click += tileClick;
				}
			}
			
			Point mov;
			for(int i = 0; i < 2; i++)
			{
				if(i == 0)
				{
					mov = new Point(2,1);
				}else{
					mov = new Point(1,3);
				}
				
				for (int j = 0; j < 8; j++)
				{
					soldado[i,j] = new Soldado();
					soldado[i,j].Load("soldado" + i.ToString() + ".gif");
					soldado[i,j].Parent = tile[i * 9, j + 1];
					soldado[i,j].MouseMove += soldadoMouseMove;
					soldado[i,j].Movimento = mov;
					soldado[i,j].Click += soldadoClick;
					soldado[i,j].Equipe = i;
				}
			}
		}
		
		public void soldadoMouseMove(object sender, EventArgs e)
		{
			Soldado soldado = sender as Soldado;
			Tile casa = (Tile) soldado.Parent;
			casa.FlatAppearance.BorderSize = 3;
			casa.FlatAppearance.BorderColor = Color.Blue;
		}
		
		public void soldadoClick(object sender, EventArgs e)
		{
			Soldado soldado = sender as Soldado;
			Tile casa = (Tile) soldado.Parent;
			casa.FlatAppearance.BorderColor = Color.Blue;
			casa.FlatAppearance.BorderSize = 3;
		}
		
		
		public void tileClick(object sender, EventArgs e)
		{
			Tile tela = sender as Tile;
			this.soldadoClicado.Parent = tela.Parent;
		}
	}
}
