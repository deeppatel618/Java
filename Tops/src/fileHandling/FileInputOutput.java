package fileHandling;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
public class FileInputOutput {
	public static void main(String args[]) throws Exception
	{
		FileOutputStream fos=new FileOutputStream("TestFile.txt");
		String s="This is testfile.txt please ignore";
		byte msg[]=s.getBytes();//file is written in bytes and read in number i.e ascci value
		fos.flush();
		fos.write(msg);
		fos.close();
		System.out.println("FIle written successfully");
		FileInputStream fis=new FileInputStream("TestFile.txt");
		int i;
		while((i=fis.read())!=-1)
		{
			System.out.print((char)i);
		}
		fis.close();
	}
}
