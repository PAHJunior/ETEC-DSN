/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 05/09/2018
 * Time: 21:01
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace raizQuadra
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
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
		void Button1Click(object sender, EventArgs e)
		{
			double a = double.Parse(textBox1.Text);
			double b = double.Parse(textBox2.Text);
			double c = double.Parse(textBox3.Text);
			double delta = b*b - 4*a*c;
			
			if (a == 0){
				MessageBox.Show("A NÃO PODE SER MENOR QUE ZERO");
			}
	
			else if (delta < 0){
			   	MessageBox.Show("DELTA É MENOR QUE ZERO");
			   	
			}else{
				double x1 = (-b - Math.Sqrt(delta)) /(2*a);
				double x2 = (-b + Math.Sqrt(delta)) /(2*a);
				textBox4.Text = x1.ToString();
				textBox5.Text = x2.ToString();
				MessageBox.Show("Delta vale "+delta);	
			}
		}
		void Button2Click(object sender, EventArgs e)
		{
			textBox1.Text = ("");
			textBox2.Text = ("");
			textBox3.Text = ("");
			textBox4.Text = ("");
			textBox5.Text = ("");
		}
	}
}
