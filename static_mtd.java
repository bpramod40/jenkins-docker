class statmthd{
    int s_a;
    int s_b;
    static int s_c;

    void disp(){
        System.out.println(s_a + " "+ s_b);
        System.out.println(s_a + " "+ s_c);
    }
    static void stat_disp(statmthd obj){
        System.out.println(obj.s_a +" "+ obj.s_b);
    }
}

class static_mtd{
    public static void main(String[] args) {
        statmthd obj1 = new statmthd();
        statmthd obj2 = new statmthd();

        obj1.s_a=10;
        obj1.s_b=20;
        
        obj2.s_a=30;
        obj2.s_b=40;

        // obj1.disp();
        // obj2.disp();

        
        // System.out.println(statmthd.s_c);
        statmthd.stat_disp(obj1);
    }
}