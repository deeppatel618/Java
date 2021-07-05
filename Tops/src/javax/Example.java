package javax;
import javax.swing.*;
public class Example {
	public static void main(String[] args) {
		JFrame frame=new JFrame("MY CODE");
		frame.setVisible(true);
		frame.setResizable(false);
		frame.setSize(300, 350);
		frame.setLayout(null);
		ProgressBarExample pb=new ProgressBarExample(0, 1000);
		pb.addingFrame(frame);
		pb.bounds(100, 50, 100, 20);
		pb.runBar(1);
		//pb.visibility=false;
	}
}
