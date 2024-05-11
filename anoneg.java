// class demo{

// }

// class anoneg {
//     public static void main(String[] args) {
//         new demo();
//     }
// }
class Demo
{
	public Demo()
	{
		System.out.println("object created");
	}
	public void show()
	{
		System.out.println("in A show");
	}
}


public class anoneg
{
	public static void main(String a[]) 
	{
		int marks;
		marks=99;
		
		new Demo();   //anonymous object
		new Demo().show();
		
//		A obj=new A();
		Demo obj;
		obj=new Demo();
		
		obj.show();
	}
}

