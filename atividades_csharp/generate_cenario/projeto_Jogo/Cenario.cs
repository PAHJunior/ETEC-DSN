/*
 * Created by SharpDevelop.
 * User: pahju
 * Date: 26/05/2019
 * Time: 20:01
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Drawing;
using System.Windows.Forms;

namespace projeto_Jogo
{
	/// <summary>
	/// Description of Cenario.
	/// </summary>
	public class Cenario:PictureBox
	{
		public Cenario()
		{
			Width = 50;
			Height = 50;
			BackColor = Color.Blue;
			BorderStyle = BorderStyle.FixedSingle;
		}
	}
}

