﻿using System;
using System.Collections.Generic;
using System.Text;

namespace anotheropgave
{
    class gnome
    {
        public string name;
        public int age;
        public int height;
        

        public gnome(string name, int age, int height)
        {
            this.name = name;
            this.age = age;
            this.height = height;
            
        }

    }
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
