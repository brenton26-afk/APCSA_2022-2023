
public class UnderDog extends Dog {
  
  //Override methods
  public void calc(int n){
    n += 2;
    super.calc(n);
    System.out.print(n);
  }
  
}
