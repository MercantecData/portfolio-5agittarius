using System;
using System.Collections.Generic;
using System.Text;


namespace anotheropgave
{
    class Program
    {
        static void Main(string[] args)
        {
            bool isrunning = true;

            while (isrunning)
            {
                Console.WriteLine("Welcome to Mystic Library!");

                Console.WriteLine("Do you wish to return the book or borrow a book");
                Console.WriteLine("press 1 to return press 2 to borrow");
                while (isrunning)
                {
                    XD(isrunning);

                }

            }

            static bool XD(bool isrunning)
            {
                

                
                
                    gnome Gnome = new gnome("Mathias", 16, 50);
                    Tomes tome1 = new Tomes("Tome 0", false);
                    Tomes tome2 = new Tomes("Tome 1", false);
                    Tomes tome3 = new Tomes("Tome 2", false);
                    Tomes tome4 = new Tomes("Tome 3", false);
                    Tomes tome5 = new Tomes("Tome 4", false);
                    Tomes tome6 = new Tomes("Tome 5", false);
                    Tomes tome7 = new Tomes("Tome 6", false);
                    List<Tomes> TomeList = new List<Tomes>();
                    TomeList.Add(tome1);
                    TomeList.Add(tome2);
                    TomeList.Add(tome3);
                    TomeList.Add(tome4);
                    TomeList.Add(tome5);
                    TomeList.Add(tome6);
                    TomeList.Add(tome7);
                    if (Console.ReadLine() == "2")
                    {
                        Console.WriteLine("Which book do you want to borrow from 0-6");
                        int i = int.Parse(Console.ReadLine());


                        TomeList[i].borrowstatus = true;
                        if (TomeList[i].borrowstatus == true)
                        {
                            Console.WriteLine(TomeList[i].name + " has been borrowed" + " since " + DateTime.Now.ToString() + " by " + Gnome.name);
                        int count = 0;
                        foreach (var Tome in TomeList)
                        { 
                        
                        }
                            isrunning = true;

                        }
                        else
                        {
                            isrunning = true;

                        }
                    }
                    else if (Console.ReadLine() == "1")
                    {
                        Console.WriteLine("which book do you wanna return 0-6");  
                        int n = int.Parse(Console.ReadLine());  
                        
                        if (TomeList[n].borrowstatus == true)
                        {
                            TomeList[n].borrowstatus = false;
                            Console.WriteLine("Book " + TomeList[n].name + " has been returned " + DateTime.Now.ToString());
                        isrunning = true;
                        }
                        else
                        {
                            isrunning = true;
                        }
                        
                    }
                    return isrunning;
                }
            }

        }
    }

