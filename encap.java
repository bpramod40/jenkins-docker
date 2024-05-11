class clse {
    private int num=10;

    int getNum(){
        return num;
    }

    void setNum(int a){
        num=a;
    }

}

class encap{
    public static void main(String[] args) {
        clse obj1= new clse();
        System.out.println(obj1.getNum());
        obj1.setNum(200);
        System.out.println(obj1.getNum());
    }
}
