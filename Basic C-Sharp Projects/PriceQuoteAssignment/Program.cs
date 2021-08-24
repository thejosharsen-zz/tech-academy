using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PriceQuoteAssignment
{
    class Program
    {
        static void Main(string[] args)
        {

            //Introduction
            Console.WriteLine("Welcome to Package Express. Please follow the instructions below.");

            // Get Package Weight
            Console.WriteLine("What is the package weight in lbs?");
            double packageWeight = Convert.ToDouble(Console.ReadLine());
            
            if (packageWeight < 50)
            {
                // Gets package width
                Console.WriteLine("What is the package width in inches?");
                double packageWidth = Convert.ToDouble(Console.ReadLine());

                // Gets package height
                Console.WriteLine("What is the package height in inches?");
                double packageHeight = Convert.ToDouble(Console.ReadLine());

                // Gets package length
                Console.WriteLine("What is the package length in inches?");
                double packageLength = Convert.ToDouble(Console.ReadLine());

                // Declares combined dimentions
                double totalDimentions = packageWidth + packageHeight + packageLength;

                if (totalDimentions < 50) 
                {
                    // Calculates Price Quote
                    double priceQuote = packageHeight * packageWidth * packageLength * packageWeight / 100;
                    Console.WriteLine("Thanks for completing the application. Your price quote comes to $" + priceQuote);
                    Console.ReadLine();
                }
                else
                {
                    // If combined dimentions sum > 50, package too big (EXIT)
                    Console.WriteLine("Packge too big to be shipped via Package Express. Have a good day.");
                    Console.ReadLine();
                    Environment.Exit(0);
                }
            }
            else
            {
                // Tells user their package is too big, (EXIT)
                Console.WriteLine("Package too heavy to be shipped via Package Express. Have a good day.");
                Console.ReadLine();
                Environment.Exit(0);
            }
          
        }
    }
}
