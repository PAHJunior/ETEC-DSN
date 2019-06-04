/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 15/05/2019
 * Time: 21:33
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Drawing;
using System.Windows.Forms;

namespace Atividade_Paulo_Rebeca
{
	/// <summary>
	/// Description of Foto.
	/// </summary>
	public class Foto:PictureBox
	{
		public Foto()
		{
			Width = 50;
			Height = 50;
			BackColor = Color.Blue;
			BorderStyle = BorderStyle.FixedSingle;
		}
	}
}
