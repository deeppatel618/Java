package javax;
//import java.awt.Color;
import javax.swing.*;

public class ProgressBarExample  {
	JProgressBar pb;
	boolean visibility=true;
	int startingPoint,endingPoint;
	public ProgressBarExample(int startingPoint,int endingPoint)
	{
		this.startingPoint=startingPoint;
		this.endingPoint=endingPoint;
		pb=new JProgressBar(startingPoint,endingPoint);
		pb.setValue(0);
		pb.setVisible(visibility);
//		//pb.setString("deep");
		pb.setStringPainted(true);//set true to display something
//		pb.setOrientation(0);//for displaying the string vertical and horizontal use 0 and 1		
	}
	public void bounds(int xCordinate,int yCordinate,int width,int height) {
		pb.setBounds(xCordinate,  yCordinate,  width, height);
	}

	public void runBar(int sleepingTime)
	{
		//this.runBar(0);
		for(int i=startingPoint;i<=endingPoint;i++)
		{
			pb.setValue(i);
			try{
				Thread.sleep(sleepingTime);
			}catch(Exception e) {
				
			}
		}
	}
	public void addingFrame(JFrame p)
	{
		p.add(pb);
	}
}