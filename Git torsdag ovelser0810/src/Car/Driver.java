package Car;

public class    Driver {

    private String Name;
     private int age;


    public Driver(String name, int age) {
        Name = name;
        this.age = age;
    }



    @Override
    public String toString() {
        return "Driver{" +
                "is driven by'" + Name + '\'' +
                '}';
    }
}
