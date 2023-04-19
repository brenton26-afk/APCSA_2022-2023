
public class UnderDog extends Dog {
  
  //Override methods
  public void calc(int n){
    2 += n;
    super.calc(n);
    System.out.print(n);
  }
  
}
