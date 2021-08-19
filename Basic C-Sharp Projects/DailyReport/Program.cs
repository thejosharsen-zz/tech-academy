using System;

namespace DailyReport
{
    class Program
    {
        static void Main()
        {
            // Introduction
            Console.WriteLine("Academy of Learning Career College");
            Console.WriteLine("Student Daily Report");
            Console.ReadLine();
            
            // Question 1:
            Console.Write("What course are you in? ");
            string activeCourse = Console.ReadLine();

            // Question 2:
            Console.WriteLine("What page number are you on?");
            string pn = Console.ReadLine();
            int pageNumber = Convert.ToInt32(pn);

            // Question 3:
            Console.WriteLine("Do you need any help with anything? Please answer \"true\" or \"false\" ");
            string nh = Console.ReadLine();
            bool needsHelp = Convert.ToBoolean(nh);

            // Question 4:
            Console.WriteLine("Was there any positive experiences you'd like to share? Please give specifics.");
            string userFeedback = Console.ReadLine();

            // Question 5:
            Console.WriteLine("Is there any other feedback you'd like to provide? Please be specific.");
            string additionalFeedback = Console.ReadLine();

            // Question 6:
            Console.WriteLine("How many hours did you study today?");
            string hs = Console.ReadLine();
            int hoursStudied = Convert.ToInt32(hs);

            // Thank the user for their feedback
            Console.Write("Thank you for your answers. An instructor will respond shortly. Have a great day!");
            Console.ReadLine();

        }
    }
}
