/*
 * Created by SharpDevelop.
 * User: ALUNO.ETEC
 * Date: 29/05/2019
 * Time: 20:06
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace jogo_projeto
{
	partial class MainForm
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		
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
			this.menuStrip1 = new System.Windows.Forms.MenuStrip();
			this.opçõesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.iniciarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.criarMapaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuStrip1.SuspendLayout();
			this.SuspendLayout();
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
			this.opçõesToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(784, 24);
			this.menuStrip1.TabIndex = 0;
			this.menuStrip1.Text = "menuStrip1";
			// 
			// opçõesToolStripMenuItem
			// 
			this.opçõesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
			this.iniciarToolStripMenuItem,
			this.criarMapaToolStripMenuItem});
			this.opçõesToolStripMenuItem.Name = "opçõesToolStripMenuItem";
			this.opçõesToolStripMenuItem.Size = new System.Drawing.Size(59, 20);
			this.opçõesToolStripMenuItem.Text = "Opções";
			// 
			// iniciarToolStripMenuItem
			// 
			this.iniciarToolStripMenuItem.Name = "iniciarToolStripMenuItem";
			this.iniciarToolStripMenuItem.Size = new System.Drawing.Size(132, 22);
			this.iniciarToolStripMenuItem.Text = "Iniciar";
			this.iniciarToolStripMenuItem.Click += new System.EventHandler(this.IniciarToolStripMenuItemClick);
			// 
			// criarMapaToolStripMenuItem
			// 
			this.criarMapaToolStripMenuItem.Name = "criarMapaToolStripMenuItem";
			this.criarMapaToolStripMenuItem.Size = new System.Drawing.Size(132, 22);
			this.criarMapaToolStripMenuItem.Text = "Criar Mapa";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(784, 749);
			this.Controls.Add(this.menuStrip1);
			this.MainMenuStrip = this.menuStrip1;
			this.Name = "MainForm";
			this.Text = "jogo_projeto";
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();

		}
		private System.Windows.Forms.ToolStripMenuItem criarMapaToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem iniciarToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem opçõesToolStripMenuItem;
		private System.Windows.Forms.MenuStrip menuStrip1;
	}
}
