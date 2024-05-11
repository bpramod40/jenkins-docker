
class staticVar{

    String brand;
    int cost;

    void disp(){
        System.out.println("Brand: "+ brand + "|" + "cost: " + cost);
    }
    
}

public class Pgm1 {
    public static void main(String[] args) {
        
        staticVar obj1=new staticVar();
        staticVar obj2=new staticVar();

        obj1.brand="apple";
        obj1.cost=2000;

        obj2.brand="oppo";
        obj2.cost=1000;

        obj1.disp();

    }
}
