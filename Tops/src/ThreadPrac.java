class NewThread implements Runnable
{
	Thread t;
	String tname;
	public NewThread(String tname)
	{
		this.tname=tname;
		t=new Thread(this,tname);
		t.start();
	}
	public void run()
	{
		for(int i=0;i<5;i++) {
			System.out.println(t+" : "+i);
			try {
				Thread.sleep(1000);
			}catch(InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println("Child thread exiting");
	}
}
public class ThreadPrac {
	public static void main(String args[]) throws InterruptedException  {
		new NewThread("One");
		new NewThread("two");
		new NewThread("three");
		Thread t=Thread.currentThread();
		System.out.println(t);
		t.setName("My thread name changed");
		System.out.println(t);
		for(int i=0;i<5;i++)
		{
			System.out.println(t+" : "+i);
			Thread.sleep(1000);
		}
		System.out.println("Main thread existing");
	}

}
