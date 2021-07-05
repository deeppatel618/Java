class Callback
{
	public void call(String msg) {
		System.out.print("["+msg);
		try {
			Thread.sleep(1000);
		}catch(InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("]");
	}
}
class Caller implements Runnable
{
	Thread t;
	String msg;
	Callback c;
	public Caller(String msg,Callback c) {
		this.msg=msg;
		this.c=c;
		t=new Thread(this);
		t.start();
	}
	public void run() {
		synchronized(c) {//remove this synchronized to see the difference
		c.call(msg);
		}
	}
	
}
public class Synchronization {
	public static void main(String[] args)
	{
		Callback b=new Callback();
		new Caller("one",b);
		new Caller("Two",b);
		new Caller("Three",b);
	}
}
