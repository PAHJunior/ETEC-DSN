/*
 * Created by SharpDevelop.
 * User: Casa
 * Date: 12/09/2018
 * Time: 19:07
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace gif
{
	partial class MainForm
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		private System.Windows.Forms.PictureBox fundoDoJogo;
		private System.Windows.Forms.Button botaoDireita;
		private System.Windows.Forms.PictureBox megamen;
		private System.Windows.Forms.Button botaoEsquerda;
		private System.Windows.Forms.Button botaoParaBaixo;
		private System.Windows.Forms.Button botaoParaCima;
		private System.Windows.Forms.Label pontuacao;
		private System.Windows.Forms.Label contador;
		
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
			this.fundoDoJogo = new System.Windows.Forms.PictureBox();
			this.botaoDireita = new System.Windows.Forms.Button();
			this.megamen = new System.Windows.Forms.PictureBox();
			this.botaoEsquerda = new System.Windows.Forms.Button();
			this.botaoParaBaixo = new System.Windows.Forms.Button();
			this.botaoParaCima = new System.Windows.Forms.Button();
			this.pontuacao = new System.Windows.Forms.Label();
			this.contador = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.fundoDoJogo)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.megamen)).BeginInit();
			this.SuspendLayout();
			// 
			// fundoDoJogo
			// 
			this.fundoDoJogo.Image = ((System.Drawing.Image)(resources.GetObject("fundoDoJogo.Image")));
			this.fundoDoJogo.Location = new System.Drawing.Point(12, 12);
			this.fundoDoJogo.Name = "fundoDoJogo";
			this.fundoDoJogo.Size = new System.Drawing.Size(800, 291);
			this.fundoDoJogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
			this.fundoDoJogo.TabIndex = 0;
			this.fundoDoJogo.TabStop = false;
			// 
			// botaoDireita
			// 
			this.botaoDireita.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("botaoDireita.BackgroundImage")));
			this.botaoDireita.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.botaoDireita.ForeColor = System.Drawing.Color.Transparent;
			this.botaoDireita.Location = new System.Drawing.Point(252, 144);
			this.botaoDireita.Name = "botaoDireita";
			this.botaoDireita.Size = new System.Drawing.Size(79, 58);
			this.botaoDireita.TabIndex = 2;
			this.botaoDireita.UseVisualStyleBackColor = true;
			this.botaoDireita.Visible = false;
			this.botaoDireita.Click += new System.EventHandler(this.Button2Click);
			// 
			// megamen
			// 
			this.megamen.BackColor = System.Drawing.Color.Transparent;
			this.megamen.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
			this.megamen.Image = ((System.Drawing.Image)(resources.GetObject("megamen.Image")));
			this.megamen.Location = new System.Drawing.Point(354, 170);
			this.megamen.Name = "megamen";
			this.megamen.Size = new System.Drawing.Size(85, 80);
			this.megamen.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
			this.megamen.TabIndex = 3;
			this.megamen.TabStop = false;
			// 
			// botaoEsquerda
			// 
			this.botaoEsquerda.BackColor = System.Drawing.Color.Black;
			this.botaoEsquerda.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("botaoEsquerda.BackgroundImage")));
			this.botaoEsquerda.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.botaoEsquerda.ForeColor = System.Drawing.Color.Transparent;
			this.botaoEsquerda.Location = new System.Drawing.Point(60, 144);
			this.botaoEsquerda.Name = "botaoEsquerda";
			this.botaoEsquerda.Size = new System.Drawing.Size(79, 58);
			this.botaoEsquerda.TabIndex = 4;
			this.botaoEsquerda.UseVisualStyleBackColor = false;
			this.botaoEsquerda.Visible = false;
			this.botaoEsquerda.Click += new System.EventHandler(this.Button1Click);
			// 
			// botaoParaBaixo
			// 
			this.botaoParaBaixo.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("botaoParaBaixo.BackgroundImage")));
			this.botaoParaBaixo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.botaoParaBaixo.ForeColor = System.Drawing.Color.Transparent;
			this.botaoParaBaixo.Location = new System.Drawing.Point(154, 144);
			this.botaoParaBaixo.Name = "botaoParaBaixo";
			this.botaoParaBaixo.Size = new System.Drawing.Size(79, 58);
			this.botaoParaBaixo.TabIndex = 5;
			this.botaoParaBaixo.UseVisualStyleBackColor = true;
			this.botaoParaBaixo.Visible = false;
			this.botaoParaBaixo.Click += new System.EventHandler(this.Button3Click);
			// 
			// botaoParaCima
			// 
			this.botaoParaCima.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("botaoParaCima.BackgroundImage")));
			this.botaoParaCima.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.botaoParaCima.ForeColor = System.Drawing.Color.Transparent;
			this.botaoParaCima.Location = new System.Drawing.Point(154, 76);
			this.botaoParaCima.Name = "botaoParaCima";
			this.botaoParaCima.Size = new System.Drawing.Size(79, 58);
			this.botaoParaCima.TabIndex = 6;
			this.botaoParaCima.UseVisualStyleBackColor = true;
			this.botaoParaCima.Visible = false;
			this.botaoParaCima.Click += new System.EventHandler(this.Button4Click);
			// 
			// pontuacao
			// 
			this.pontuacao.BackColor = System.Drawing.Color.Transparent;
			this.pontuacao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.pontuacao.ForeColor = System.Drawing.Color.White;
			this.pontuacao.Location = new System.Drawing.Point(12, 9);
			this.pontuacao.Name = "pontuacao";
			this.pontuacao.Size = new System.Drawing.Size(127, 26);
			this.pontuacao.TabIndex = 7;
			this.pontuacao.Text = "PONTUAÇÃO:";
			// 
			// contador
			// 
			this.contador.BackColor = System.Drawing.Color.Transparent;
			this.contador.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.contador.ForeColor = System.Drawing.Color.White;
			this.contador.Location = new System.Drawing.Point(145, 9);
			this.contador.Name = "contador";
			this.contador.Size = new System.Drawing.Size(69, 26);
			this.contador.TabIndex = 8;
			this.contador.Text = "0";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.Black;
			this.ClientSize = new System.Drawing.Size(824, 315);
			this.Controls.Add(this.contador);
			this.Controls.Add(this.pontuacao);
			this.Controls.Add(this.botaoParaCima);
			this.Controls.Add(this.botaoParaBaixo);
			this.Controls.Add(this.botaoEsquerda);
			this.Controls.Add(this.megamen);
			this.Controls.Add(this.botaoDireita);
			this.Controls.Add(this.fundoDoJogo);
			this.Name = "MainForm";
			this.Text = "gif";
			this.Load += new System.EventHandler(this.MainFormLoad);
			this.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.precione);
			((System.ComponentModel.ISupportInitialize)(this.fundoDoJogo)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.megamen)).EndInit();
			this.ResumeLayout(false);

		}
	}
}
