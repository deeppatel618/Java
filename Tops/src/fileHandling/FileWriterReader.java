package fileHandling;
import java.io.FileWriter;
import java.io.FileReader;
public class FileWriterReader {
	public static void main(String[] args) throws Exception
	{
		FileWriter fw=new FileWriter("TestFile2");
		String s="This is test file 2";
		fw.write(s);
		fw.flush();
		fw.close();
		
		FileReader fr=new FileReader("TestFile2");
		int i;
		while((i=fr.read())!=-1)
		{
			System.out.print((char)i);
		}
		fr.close();
	}
}
