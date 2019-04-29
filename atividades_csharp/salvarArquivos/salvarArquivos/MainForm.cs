/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 07/11/2018
 * Time: 19:50
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace salvarArquivos
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
			string nomeDoArquivo = "aula.txt";
			/* SAVEFILE , SERVE ARA SALVAR O ARQUIVO, A VIRGULA É OPCIONAL, SERVE PARA SALVAR O ARQUIVO*/
			richTextBox1.SaveFile(nomeDoArquivo, RichTextBoxStreamType.PlainText);
			MessageBox.Show("Salvo com sucesso !");
		}
		void Button3Click(object sender, EventArgs e)
		{
			richTextBox1.Clear();
		}
		void Button2Click(object sender, EventArgs e)
		{
			richTextBox1.LoadFile("aula.txt", RichTextBoxStreamType.PlainText);
		}


		//BOTAO ADD LINHA AO RICHTEXTBOX
		void Button4Click(object sender, EventArgs e)
		{
			string linha = textBox1.Text + "@" + textBox2.Text + "@" + textBox3.Text + "@" + pictureBox1.ImageLocation + "\n";
			richTextBox1.AppendText(linha); //Adicionar linha ao final do texto do richtextbox
			
		}
		void Button5Click(object sender, EventArgs e)
		{
			String linha = richTextBox1.Lines[int.Parse(textBox4.Text)];// Pegar o numero da consulta
			string[] campo= linha.Split('@'); //quebra de linha
			textBox1.Text = campo[0];
			textBox2.Text = campo[1];
			textBox3.Text = campo[2];
			pictureBox1.Load(campo[3]);
		}
		
		void PictureBox1Click(object sender, EventArgs e)
		{
			if(openFileDialog1.ShowDialog() == DialogResult.OK)
			{
				pictureBox1.Load(openFileDialog1.FileName);
			}
		}
	}
}
