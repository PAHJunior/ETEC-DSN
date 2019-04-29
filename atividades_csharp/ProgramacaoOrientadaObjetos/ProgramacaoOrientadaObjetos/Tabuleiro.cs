using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProgramacaoOrientadaObjetos
{
    class Tabuleiro: Panel
    {
        private int bonusAtaque = 0;
        private int bonusDefesa = 0;
        private Point posicao;

        public int BonusAtaque { get { return bonusAtaque; } set { bonusAtaque = value; } }

        public int BonusDefesa { get { return bonusDefesa; } set { bonusDefesa = value; } }

        public Point Posicao { get { return posicao; } set { posicao = value; } }
    }
}
