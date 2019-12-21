package rto.bl;
import java.util.Random;
public class RandomNumbers
{
			public static void main(String[] args)
			{
		            String s ="KL 01TEMP";
		            String temp="";
		            for (int i = 0071; i < 1000; i++) 
		            {
	                char digit1 = (char) (Math.random() * 10 + '0');
	                temp=s+digit1;
		            }
		            System.out.println("Random vehicle plate number: " + temp);
			}
}