using System;


namespace ARRAY

{
    class Program
    {
        
        static void Main(string[] args)
        {
            int i = int.Parse(Console.ReadLine());
            int[] JustAnArray = new int[i];
            bool run = true;
            Console.Clear();

            while (run)
            {
                if (i >= 0)
                {
                    Console.WriteLine(i);
                    i--;
                }
                else
                {
                    Console.WriteLine();
                    run = false;
                }

            }

        
        
        
        
        }


       
         
    }
}

