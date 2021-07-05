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
public class MenuExample implements ActionListener {
	JFrame f;
	JLabel l1,l2,l3,l4,l5;
	JTextField t1,t2,t3,t4,t5;
	JButton insertBtn,deleteBtn,updateBtn,searchBtn;
	int count=0;
	JMenuBar mb;
	JMenuItem insert;
	JMenu menu;

	public MenuExample()
	{
		menu=new JMenu("Operations");
		f=new JFrame("MY PROJECT 1");

		mb=new JMenuBar();	
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
		
		insertBtn=new JButton("Insert");
		searchBtn=new JButton("Search");
		updateBtn=new JButton("Update");
		deleteBtn=new JButton("delete");
		insert =new JMenuItem("INSERT DATA");
		f.setVisible(true);
		f.setSize(300, 350);
		f.setLayout(null);
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
		
		f.add(insertBtn);//adding buttons
		f.add(updateBtn);
		f.add(deleteBtn);
		f.add(searchBtn);
		f.add(mb);
		f.setJMenuBar(mb);
		mb.add(menu);
		mb.setVisible(true);
		menu.setVisible(true);
		
		insertBtn.addActionListener(this);//adding buttons into actionListener
		updateBtn.addActionListener(this);
		deleteBtn.addActionListener(this);
		searchBtn.addActionListener(this);
		insert.addActionListener(this);
		menu.add(insert);
	}
	public void allVisibleInsert(boolean visibility)
	{
		l1.setVisible(visibility);
		l2.setVisible(visibility);
		l3.setVisible(visibility);
		l4.setVisible(visibility);
		l5.setVisible(visibility);
		t1.setVisible(visibility);
		t2.setVisible(visibility);
		t3.setVisible(visibility);
		t4.setVisible(visibility);
		t5.setVisible(visibility);
		insertBtn.setVisible(visibility);
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
		
		insertBtn.setBounds(100, 200, 100, 20);//button size
//		updateBtn.setBounds(150, 200, 100, 20);
//		deleteBtn.setBounds(150, 230, 100, 20);
//		searchBtn.setBounds(50, 230, 100, 20);
	}
	public static void main(String[] args)
	{
		MenuExample me=new MenuExample();
		me.allVisibleInsert(false);
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
		//allVisibleInsert(false);
		if(btn.getSource()==insert)
		{
			System.out.println("insertitem pressed");
			allVisibleInsert(true);
			
//			try
//			{
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/swingdata","root","");
//			String sql="insert into student(Firstname,Lastname,Number,Email) values(?,?,?,?)";
//			PreparedStatement pst=conn.prepareStatement(sql);
//			pst.setString(1, t2.getText());
//			pst.setString(2, t3.getText());
//			pst.setString(3, t4.getText());
//			pst.setString(4, t5.getText());
//			pst.executeUpdate();
//			clear();
			
//		}
//			catch(Exception e) {
//				
//			}
		}
		if(btn.getSource()==insertBtn)
		{
			System.out.println(t2.getText()+"e");
			if(t2.getText().isEmpty())
			{
				System.out.println("firstname empty");
			}
		}
//		else if(btn.getSource()==b2)
//		{
//			System.out.println("b2 pressed");
//		}
		
	}
}
