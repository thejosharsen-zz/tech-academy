using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringAssignment
{
    class Program
    {
        static void Main(string[] args)
        {

            // String Concatenation
            string firstName = "Josh";
            string middleName = "P";
            string lastName = "Cummings";
            string fullName = firstName + " " + middleName + " " + lastName;
            Console.WriteLine("My full name is " + fullName);
            Console.ReadLine();

            // Convert String to UPPERCASE
            string schoolName = "Academy of Learning";
            schoolName = schoolName.ToUpper();
            Console.WriteLine("The name of the school I am attending is " + schoolName);
            Console.ReadLine();

            // String Builder
            StringBuilder sb = new StringBuilder();
            sb.Append("My name is " + firstName);
            sb.Append(" " + middleName + " " + lastName);
            sb.Append(" and I am attending " + schoolName);
            Console.WriteLine(sb);
            Console.ReadLine();

        }
    }
}
