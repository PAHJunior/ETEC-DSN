/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 12/09/2018
 * Time: 19:07
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace gif
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		int ponto = 0;
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
		
		void MainFormLoad(object sender, EventArgs e)
		{
			/*Definindo o cointeiner pai */
			megamen.Parent = fundoDoJogo;
			pontuacao.Parent = fundoDoJogo;
			contador.Parent = fundoDoJogo;
			
		}
		
		
		// ESQUERDA NO BOTAO
		public void Button1Click(object sender, EventArgs e)
		{
			megamen.Left -=10;
			megamen.Load("megaman-esquerda.gif");
			if(megamen.Left < 0){
				megamen.Left = 0;
			}
		}
		
		//DIREITA NO BOTAO
		void Button2Click(object sender, EventArgs e)
		{
			megamen.Left +=10;
			megamen.Load("megaman-direita.gif");
			
			if(megamen.Left > 700){
				megamen.Left = 700;
			}			
		}
		
		//BOTAO PARA CIMA
		void Button4Click(object sender, EventArgs e)
		{
			megamen.Top -=10;
			megamen.Load("megaman-direita.gif");
			
			if(megamen.Top < 0 ){
				megamen.Top = 0;
			}
		}
		
		//BOTAO PARA BAIXO
		void Button3Click(object sender, EventArgs e)
		{
			megamen.Top +=10;
			megamen.Load("megaman-direita.gif");
			
			if(megamen.Top > 155){
				megamen.Top = 155;
			}
		}
		
		
		
		
		int sentido = 1;
		//TECLADO
		void precione(object sender, KeyPressEventArgs e)
		{
			char teclaPrecionada = e.KeyChar;
			if ((sentido == -1) && (teclaPrecionada == 'd')){
				sentido = 1; 
				megamen.Load("megaman-direita.gif");
			}else if ((sentido == 1) && (teclaPrecionada == 'a')){
				sentido = -1;
				megamen.Load("megaman-esquerda.gif");
			}
			//DIREITA - AO PRECIONAR A TECLA D
			if ((teclaPrecionada == 'd') || (teclaPrecionada == 'D')) {
				megamen.Left +=10;
				
			if(megamen.Left > 730){
				megamen.Left = -60;
				ponto++;
				contador.Text = ponto.ToString();
			}
				/* TECLA PARA ESQUERDA */
			}else if ((teclaPrecionada == 'a') || (teclaPrecionada == 'A')) {
				megamen.Left -=10;
				
				
			if(megamen.Left < -60){
				megamen.Left = 730;
				ponto--;
				contador.Text = ponto.ToString();
			}
				/* PARA CIMA - AO PRECIONAR TECLA W
			}else if ((teclaPrecionada == 'w') || (teclaPrecionada == 'W')){
			    megamen.Top -=10;
				megamen.Load("megaman-direita.gif");

			if(megamen.Top < 0 ){
				megamen.Top = 0;
			}
			}else if ((teclaPrecionada == 's') || (teclaPrecionada == 'S')){
				megamen.Top +=10;
			megamen.Load("megaman-direita.gif");
			
				if(megamen.Top > 155){
					megamen.Top = 155;
				}*/
			}
			
			/*FUNDO DO JOGO*/
			
			if (ponto == -1){
				fundoDoJogo.Load("fundo_-1H.jpg");
			}else if (ponto == 0){
				fundoDoJogo.Load("fundo_0H.jpg");
			}
			
			// FUNDO 2
			else if (ponto == 1){
				fundoDoJogo.Load("fundo_1H.jpg");
			}
			// FUNDO 3
			else if (ponto == 2){
				fundoDoJogo.Load("fundo_2H.jpg");
				if (megamen.Left == 730){
					DialogResult OpcaoDoUsuario = new DialogResult();
					
					OpcaoDoUsuario = MessageBox.Show("FIM DO JOGO :)","WINNER",MessageBoxButtons.OK, MessageBoxIcon.Information);
					if (OpcaoDoUsuario == DialogResult.OK){
						//this.Hide();
						this.Close();
					}
				}
			}
		}
	}
}
