/*
 * Created by SharpDevelop.
 * User: ALUNO.ETEC
 * Date: 29/05/2019
 * Time: 20:07
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Drawing;
using System.Windows.Forms;

namespace jogo_projeto
{
	/// <summary>
	/// Description of Tile.
	/// </summary>
	public class Tile : Button
	{
		public Tile()
		{
			Width = 60;
			Height = 60;
			BackColor = Color.ForestGreen;
			FlatStyle = FlatStyle.Flat;
			FlatAppearance.BorderSize = 1;
			FlatAppearance.BorderColor = Color.DarkGreen;
			FlatAppearance.MouseOverBackColor = Color.LightGreen;
			FlatAppearance.MouseDownBackColor =Color.LawnGreen;
			BackgroundImageLayout = ImageLayout.Stretch;
			MouseMove += tileMouseMove;
			MouseLeave += tileMouseLeave;
		}
		
		public void tileMouseMove(object sender, MouseEventArgs e)
		{
			FlatAppearance.BorderSize = 3;
			FlatAppearance.BorderColor = Color.Blue;
		}
		
		public void tileMouseLeave(object sender, EventArgs e)
		{
			FlatAppearance.BorderSize = 1;
			FlatAppearance.BorderColor = Color.DarkGreen;
		}
		
		private string nome;
		public string Nome {get {return nome; } set { nome = value; } }
		
		private string bonusVida;
		public string BonusVida {get {return bonusVida; } set { bonusVida= value; } }
		
		private int penalidade = 0;
		public int Penalidade {get {return penalidade; } set { penalidade = value; } }
		
		private int bonusAtaque = 0;
		public int BonusAtaque {get {return bonusAtaque; } set { bonusAtaque = value; } }
		
		private int bonusDefesa = 0;
		public int BonusDefesa {get {return bonusDefesa; } set { bonusDefesa = value; } }
		
		private Point posicao = new Point(0, 0);
		public Point Posicao  {get {return posicao; } set { posicao = value; } }
		
		
	}
}
