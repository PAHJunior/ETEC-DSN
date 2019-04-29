/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 05/09/2018
 * Time: 15:31
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace CalcularMedia
{
	partial class MainForm
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		private System.Windows.Forms.Button btCalc;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.TextBox txtN1;
		private System.Windows.Forms.TextBox txtN2;
		private System.Windows.Forms.TextBox txtN3;
		private System.Windows.Forms.TextBox txtN4;
		
		/// <summary>
		/// Disposes resources used by the form.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing) {
				if (components != null) {
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		/// <summary>
		/// This method is required for Windows Forms designer support.
		/// Do not change the method contents inside the source code editor. The Forms designer might
		/// not be able to load this method if it was changed manually.
		/// </summary>
		private void InitializeComponent()
		{
			this.btCalc = new System.Windows.Forms.Button();
			this.button1 = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.txtN1 = new System.Windows.Forms.TextBox();
			this.txtN2 = new System.Windows.Forms.TextBox();
			this.txtN3 = new System.Windows.Forms.TextBox();
			this.txtN4 = new System.Windows.Forms.TextBox();
			this.SuspendLayout();
			// 
			// btCalc
			// 
			this.btCalc.Location = new System.Drawing.Point(12, 156);
			this.btCalc.Name = "btCalc";
			this.btCalc.Size = new System.Drawing.Size(125, 41);
			this.btCalc.TabIndex = 0;
			this.btCalc.Text = "Calcular";
			this.btCalc.UseVisualStyleBackColor = true;
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(168, 156);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(133, 41);
			this.button1.TabIndex = 1;
			this.button1.Text = "Limpar";
			this.button1.UseVisualStyleBackColor = true;
			// 
			// label1
			// 
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.Location = new System.Drawing.Point(12, 9);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(289, 35);
			this.label1.TabIndex = 2;
			this.label1.Text = "CALCULAR A MEDIA DO ALUNO";
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(12, 95);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(51, 20);
			this.label2.TabIndex = 3;
			this.label2.Text = "Nota 1º";
			// 
			// label3
			// 
			this.label3.Location = new System.Drawing.Point(12, 44);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(100, 23);
			this.label3.TabIndex = 4;
			this.label3.Text = "Nome do aluno";
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(12, 61);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(289, 20);
			this.textBox1.TabIndex = 5;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(86, 95);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(51, 20);
			this.label4.TabIndex = 6;
			this.label4.Text = "Nota 2º";
			// 
			// label5
			// 
			this.label5.Location = new System.Drawing.Point(168, 95);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(51, 20);
			this.label5.TabIndex = 7;
			this.label5.Text = "Nota 3º";
			// 
			// label6
			// 
			this.label6.Location = new System.Drawing.Point(250, 95);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(51, 20);
			this.label6.TabIndex = 8;
			this.label6.Text = "Nota 4º";
			// 
			// txtN1
			// 
			this.txtN1.Location = new System.Drawing.Point(12, 118);
			this.txtN1.Name = "txtN1";
			this.txtN1.Size = new System.Drawing.Size(51, 20);
			this.txtN1.TabIndex = 9;
			// 
			// txtN2
			// 
			this.txtN2.Location = new System.Drawing.Point(86, 118);
			this.txtN2.Name = "txtN2";
			this.txtN2.Size = new System.Drawing.Size(51, 20);
			this.txtN2.TabIndex = 10;
			// 
			// txtN3
			// 
			this.txtN3.Location = new System.Drawing.Point(168, 118);
			this.txtN3.Name = "txtN3";
			this.txtN3.Size = new System.Drawing.Size(51, 20);
			this.txtN3.TabIndex = 11;
			// 
			// txtN4
			// 
			this.txtN4.Location = new System.Drawing.Point(250, 118);
			this.txtN4.Name = "txtN4";
			this.txtN4.Size = new System.Drawing.Size(51, 20);
			this.txtN4.TabIndex = 12;
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(313, 209);
			this.Controls.Add(this.txtN4);
			this.Controls.Add(this.txtN3);
			this.Controls.Add(this.txtN2);
			this.Controls.Add(this.txtN1);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.textBox1);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.btCalc);
			this.Name = "MainForm";
			this.Text = "CalcularMedia";
			this.ResumeLayout(false);
			this.PerformLayout();

		}
	}
}
