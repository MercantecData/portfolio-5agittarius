using System;
using System.Collections.Generic;
using System.Text;

namespace anotheropgave
{
    class Tomes
    {
        public string name;
        public bool borrowstatus;

        public Tomes(string name, bool borrowstatus)
        {
            this.name = name;
            this.borrowstatus = borrowstatus;
        }
    }
}
