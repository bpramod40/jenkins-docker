class sblock {
    static int num;
    static{
        num=10;
        System.out.println("in static blk" + num);
        num++;
    }
    
}

class stat_blk{
    public static void main(String[] args) throws ClassNotFoundException {
       // sblock obj = new sblock();

        Class.forName("sblock");
        Class.forName("sblock");

        System.out.println(sblock.num);
        
    }
}
