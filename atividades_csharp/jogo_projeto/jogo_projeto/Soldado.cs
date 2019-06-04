/*
 * Created by SharpDevelop.
 * User: ALUNO.ETEC
 * Date: 29/05/2019
 * Time: 20:51
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Drawing;
using System.Windows.Forms;

namespace jogo_projeto
{
	/// <summary>
	/// Description of Soldado.
	/// </summary>
	public class Soldado : PictureBox
	{
		public Soldado()
		{
			this.Height = 57;
			this.Width = 57;
			this.Left = 2;
			this.Top = 2;
			this.SizeMode = PictureBoxSizeMode.StretchImage;
		}
		
		private string nome = "";
		public string Nome { get { return nome;} set { nome = value; } }
		
		private int pontosVida = 0;
		public int PontosVida { get { return pontosVida;} set { pontosVida = value;} }
		
		private int equipe = 0;
		public int Equipe { get { return equipe; } set {equipe = value;} }
		
		private Point movimento = new Point(1,1);
		public Point  Movimento { get { return movimento; } set { movimento = value; } }
		
		private int pontosAtaque = 0;
		public int PontosAtaque {get { return pontosAtaque; } set {pontosVida = value;} }

		private int pontsoDefesa = 0;
		public int PontsoDefesa{get { return pontsoDefesa; } set {pontsoDefesa = value;} }
		
		private Point posicao = new Point(0,0);
		public Point Posicao { get {return posicao; }  set { posicao = value; } }
	}
}
