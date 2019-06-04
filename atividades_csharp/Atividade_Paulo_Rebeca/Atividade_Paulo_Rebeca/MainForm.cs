/*
 * Created by SharpDevelop.
 * User: aluno.etec
 * Date: 15/05/2019
 * Time: 21:21
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace Atividade_Paulo_Rebeca
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		public MainForm()
		{
			InitializeComponent();
			radioButton1.Checked = true;
		}
		
		
		String nomeImg= "aquario";
		Foto[,] ft = new Foto[10,10];
		
		void Button1Click(object sender, EventArgs e)
		{
			
			if(radioButton1.Checked == true){
				nomeImg = "aquario";
			}
			else if (radioButton2.Checked == true){
				nomeImg = "coral";
			}
			else if (radioButton3.Checked == true){
				nomeImg = "espaco";
			}
			else if (radioButton4.Checked == true){
				nomeImg = "fundoMar";
			}
			else if (radioButton5.Checked == true){
				nomeImg = "imgTop";
			}
			else if (radioButton6.Checked == true){
				nomeImg = "nibiru";
			}
			else if (radioButton7.Checked == true){
				nomeImg = "jujuba";
			}
			else if (radioButton8.Checked == true){
				nomeImg = "jessiquinha";
			}
			else if (radioButton9.Checked == true){
				nomeImg = "poly";
			}
			for(int j = 0; j < 10; j++)
				for(int i = 1; i < 10; i++)
					ft[j,i].Load("./img/output/"+ nomeImg +"_0"+ j.ToString() + (i).ToString()+".jpg");
			
			
		}
		
		
		
		void MainFormLoad(object sender, EventArgs e)
		{
			for(int j = 0; j < 10; j++)
			{
				
				for(int i = 1; i < 10; i++)
				{
					ft[j,i] = new Foto();
					ft[j,i].Parent = this;
					ft[j,i].Top = 50 + 52 * j;
					ft[j,i].Left = 50 + 52 * i;
					
					ft[j,i].Load("./img/output/"+ nomeImg +"_0"+ j.ToString() + (i).ToString()+".jpg");					
				}
			}
			
		}
		
		void PictureBox1Click(object sender, EventArgs e)
		{
			
		}
	}
}
