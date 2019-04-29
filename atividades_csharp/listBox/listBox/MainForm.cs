/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 26/09/2018
 * Time: 21:20
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace listBox
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
		void Button2Click(object sender, EventArgs e)
		{
			string s = textBox1.Text;
			char letra = textBox2.Text[0];
			int cont = 0;
			for (int i = 0; i < s.Length; i++){
				if (s[i] == letra)
					cont++;
			}
			label3.Text =  cont.ToString();
		}
		
		void Button1Click(object sender, EventArgs e)
		{
			string s = textBox1.Text;
			listBox1.Items.Add(s);
			textBox1.Clear();
			textBox1.Focus();
			
		}
		void Button3Click(object sender, EventArgs e)
		{
			listBox1.Items.Clear();
			textBox1.Focus();
		}
	}
}
