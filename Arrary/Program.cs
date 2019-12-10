using System;
using System.Text;
namespace _78888
{
    class Program
    {
        public static System.Text.Encoding Unicode { get; }
        static void Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8;
            Console.WriteLine("Welcome to XD world!");
            Console.WriteLine("press 1 or 2 to continue!");

            
            int strinfg = 0;
            while (strinfg == 0 )
                {
                strinfg = int.Parse(Console.ReadLine());
            }
            
            while ( strinfg > 0 )
            {
                
                
                if (strinfg == 1)
                {
                    Console.WriteLine(Eo());
                    Console.WriteLine("press 1 for da emoji!!");
                    Console.WriteLine("press 2 for da quote!!");
                }
                else if (strinfg == 2)
                {
                    quote();
                    Console.WriteLine("press 1 for da emoji!!");
                    Console.WriteLine("press 2 for da quote!!");
                }
                
                strinfg = int.Parse(Console.ReadLine());
                
            }


        }

        static string Eo()
        {
            int nnn = 0;
            Random iii = new Random();
            nnn = iii.Next(1, 10);
            string returnstring = "1";
            switch (nnn)
            {
                case 1:
                    returnstring = "(●'o'●)";
                    break;
                case 2:
                    returnstring = "/(ㄒoㄒ)/~~";
                    break;
                case 3:
                    returnstring = "(*^_^*)";
                    break;
                case 4:
                    returnstring = "d(-w-)b";
                    break; 
                case 5:
                    returnstring = "(T_T)";
                    break;
                case 6:
                    returnstring = "(⊙o⊙)?";
                    break;
                case 7:
                    returnstring = "ε=( o｀ω′)ノ⚡";
                    break;
                case 8:
                    returnstring = "<。)#)))≦";
                    break;
                default:
                    returnstring = "XD";
                    break;



            }
            return returnstring;


        }
        static void quote()
        {
            int nuns = 0;
            Random number = new Random();
            string[] naunsArray = {
            "be fantastic ",
                "and you shall receive challenges. ",
                "There is only one possibility: DIE AND LOSE IT ALL.",
                "never too late to cry.", "don't mess around with it.",
                "Stand up and straighten up your legs when you dance.",
                "have faith in the police.",
            "and our certain death its protagonist.", "just do it again and again.", "you want more than vomit.","You can ensure that your brother feels ashamed", "make sure you dont bury money."
         };
            nuns = number.Next(0, naunsArray.Length);
            // ¨Dont sleep OwO§ 
            int head = 0;
            Random number1 = new Random();
            string[] headArray =
            { "Don't be brilliant, ", "Seek not beauty, ", "Keep yourself brave, ", "If one does not wish to be fashionable, ", "Try again, ", "Lie about the myths ", "Rule 9: ", "Pretend to be losing,  ",
             "Dead people unite! ", "Death is worth fighting for, ","rule 11: ","Just so you know ", "Life itself is a construct, ", "If you want to make an afterlife, ", "If you actually need to try to impress people by being a romantic, "
             ,"if you obey chaos, ", "if you know how to stop thinking about him,"
};
            head = number1.Next(0, headArray.Length);


            int The = 0;
            Random number2 = new Random();
            string[] headTheArray =
            {
                "Do you really wanna torture lovers? ","Once a monkey always a monkey. ", "The solution to the mafia is reality. ","You are above most people! ","Average people demolish what brians swallow. ","The world has an impact on the Earth. ","Attractiveness is to not lie. ", "Dont whip yourself. Why not just take a picture? "
               ,"Im no gay my boyfriend gay tho" ,"Emoji is the ANSWER!" ,"Be drunk at work!", "Do you think you should have to buy the government?","Be mean.Or dont."          };
            The = number2.Next(0, headTheArray.Length);

            
            
            Random writeRandom = new Random();
            int write = writeRandom.Next(0, 2);
             
            if (write == 1 )
            {
                Console.WriteLine(headArray[head] + naunsArray[nuns]);
            }
            if (write == 0)
           {
                Console.WriteLine(headTheArray[The]);
            }
            
       
            }
        



        }



    }
