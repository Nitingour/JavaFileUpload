package test;

public class Test {

	public static void main(String[] args) throws Exception{
		
		for(int i=0;i<5;i++)
		{
			 Thread.sleep(500);
		  long l=System.currentTimeMillis();//1 jan 1970 00:00 AM ---->till  ms 8574389573498734
          System.out.println(l);		
		String s=l+"";
		String sub=s.substring(8);//9843758943758435
		System.out.println(sub);
		}
	}

}
