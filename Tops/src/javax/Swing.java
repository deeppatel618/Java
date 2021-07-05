package javax;
//import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.sql.PreparedStatement;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.*;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

//import com.mysql.jdbc.PreparedStatement;
public class Swing implements ActionListener {
	JFrame f;
	JLabel l1,l2,l3,l4,l5;
	JTextField t1,t2,t3,t4,t5;
	JButton b1,b2,b3,b4;
	int count=0;
	public Swing()
	{
		
		f=new JFrame("MY PROJECT 1");
		f.setVisible(true);
		f.setResizable(false);
		f.setSize(300, 350);
		//f.setLayout(new FlowLayout()); //auto layout
		f.setLayout(null);
		l1=new JLabel("Id");
		l2=new JLabel("Firstname");
		l3=new JLabel("Lastname");
		l4=new JLabel("Number");
		l5 =new JLabel("Email");
		
		t1=new JTextField(20);
		t2=new JTextField(20);
		t3=new JTextField(20);
		t4=new JTextField(20);
		t5=new JTextField(20);
		
		b1=new JButton("Insert");
		b2=new JButton("Search");
		b3=new JButton("Update");
		b4=new JButton("delete");
		addingItems();
		SetBounds();

	}
	void addingItems()
	{
		f.add(l1);// adding labels
		f.add(l2);
		f.add(l3);
		f.add(l4);
		f.add(l5);
		
		f.add(t1);//adding textfield
		f.add(t2);
		f.add(t3);
		f.add(t4);
		f.add(t5);
		
		f.add(b1);//adding buttons
		f.add(b2);
		f.add(b3);
		f.add(b4);
		
		b1.addActionListener(this);//adding buttons into actionListener
		b2.addActionListener(this);
		b3.addActionListener(this);
		b4.addActionListener(this);
	}
	void SetBounds()
	{
		l1.setBounds(50, 50, 100, 20);//label size
		l2.setBounds(50, 80, 100, 20);
		l3.setBounds(50, 110, 100, 20);
		l4.setBounds(50, 140, 100, 20);
		l5.setBounds(50, 170, 100, 20);
		
		t1.setBounds(150, 50, 100, 20);//TextField size
		t2.setBounds(150, 80, 100, 20);
		t3.setBounds(150, 110, 100, 20);
		t4.setBounds(150, 140, 100, 20);
		t5.setBounds(150, 170, 100, 20);
		
		b1.setBounds(50, 200, 100, 20);//button size
		b2.setBounds(150, 200, 100, 20);
		b3.setBounds(150, 230, 100, 20);
		b4.setBounds(50, 230, 100, 20);
	}
	public static void main(String[] args)
	{
		new Swing();
	}
	public void clear()
	{
		t1.setText("");
		t2.setText("");
		t3.setText("");
		t4.setText("");
		t5.setText("");
	}
	public void actionPerformed(ActionEvent btn) {
		if(btn.getSource()==b1)
		{
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/swingdata","root","");
			String sql="insert into student(Firstname,Lastname,Number,Email) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, t2.getText());
			pst.setString(2, t3.getText());
			pst.setString(3, t4.getText());
			pst.setString(4, t5.getText());
			pst.executeUpdate();
			clear();
		}
			catch(Exception e) {
				
			}
		}
		else if(btn.getSource()==b2)
		{
			System.out.println("b2 pressed");
		}
		
	}
}