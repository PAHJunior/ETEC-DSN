/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 26/09/2018
 * Time: 21:19
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace Jogo_Da_Forca
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class JogoDaForca : Form
	{
		//GUARDANDO A PALAVRA DIGITADA NA VARIAVEL PALAVRA
		
		public JogoDaForca()
		{
			InitializeComponent();
			panel1.Visible = false;
			this.AcceptButton = btnEsconder;
		}
		
		
		string palavra;	// PALAVRA PARA ADVINHAR
		int contErros = 0; //CONTADOR DE CHUTES ERRADOS
		string dica; 
		
		void BtnEsconderClick(object sender, EventArgs e)
		{
			palavra = textBox1.Text;
			panel2.Visible = false;
			
			string aux = "";
			
			// TROCANDO AS LETRAS POR '?'
			for (int i = 0; i <palavra.Length; i++){
				aux += "?";
			}
			label1.Text = aux;
			panel1.Visible = true;
			
			//MUDAR A COR DOS BOTAO PARA CINZA CLARO (PARA PADRONIZAR)
			Button[] tecla = {tecla1, tecla2, tecla3, tecla4, tecla5, tecla6, tecla7, tecla8, tecla9, tecla10, tecla11, tecla12, tecla13, tecla14, tecla15, tecla16, tecla17, tecla18, tecla19, tecla20, tecla21, tecla22, tecla23, tecla24, tecla25, tecla26 };
			for (int i = 0; i < 26; i++){
				tecla[i].BackColor = Color.FromArgb(255,255,255);
			}
			
		}
		
		
		void Tecla_Click(object sender, EventArgs e)
		{
			Button btn = sender as Button;
			btn.Enabled = false; //DESABILITA O BOTÃO CLICADO
			char letra = btn.Text[0];
			string aux = "";
			int cont = 0; // conta quantas vezes a letra aparece na palavra
			
			int i = 0; // CONTADOR DO FOREACH
			foreach (char caracter in palavra){
				//SE ACERTOU A PALAVRA
				if (caracter == letra){
					aux += letra;
					cont++;
				}
				else
				{
					//SE ERROU RECEBE O CARACTER DO LABEL
					aux += label1.Text[i]; 
				}
				i++;
			}//CHAVE QUE FECHA
						
			label1.Text = aux;
			
			//verifica se errou
			if(cont == 0) // se eerou o cont está valendo zero
			{
				contErros++;
				//carrega a imagem correspondente ao contErros
				pictureBox1.Load("forca"+contErros.ToString()+".png");
				btn.BackColor = Color.Red; // pintar o botao de vermelho
				if(contErros == 7)// se perdeu
				{
					MessageBox.Show("Perdeu !! a palavra secreta era: "+palavra);
					panel2.Visible = false;
					panel1.Visible = false;
				}
			}
			else // senão, ele chutou certo
			{
				btn.BackColor = Color.Green;//pintar o botao de verde
				if(label1.Text == palavra) // se ganhou o jogo
				{
					MessageBox.Show("Ganhou");
					panel2.Visible = false;
					panel1.Visible = false;
				}
			}
		}
		
		void Button5Click(object sender, EventArgs e)
		{
			(sender as Button).BackColor = Color.Yellow;
			MessageBox.Show("Voce cliclou no botão "+(sender as Button).Text);
			
		}
		
		//REINICIAR
		void Button9Click(object sender, EventArgs e)
		{
			panel2.Visible = true;
			contErros = 0;
			textBox1.Text = "";
			pictureBox1.Load("forca0.png");
			textBox1.Focus();
			
			Button[] tecla = {tecla1, tecla2, tecla3, tecla4, tecla5, tecla6, tecla7, tecla8, tecla9, tecla10, tecla11, tecla12, tecla13, tecla14, tecla15, tecla16, tecla17, tecla18, tecla19, tecla20, tecla21, tecla22, tecla23, tecla24, tecla25, tecla26 };
			for (int i = 0; i < 26; i++){
				tecla[i].Enabled = true;
				tecla[i].BackColor = Color.FromArgb(255,255,255);
			}					
		}
	}
}
