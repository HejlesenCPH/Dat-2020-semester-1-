package Car;

public class MAIN {
    private Driver driver;
    private Car car;

    public static void main(String[] args) {

        Driver driver = new Driver("Sebastian", 24);
        Driver driver1 = new Driver("John", 25);
        Car car = new Car("bmw", "Crossover", 2020, "Suv",driver);
        Car car1 = new Car("Ford", "Crossover", 2019, "Suv",driver1);



        System.out.println(driver.toString());
        System.out.println(car.toString(car));
        System.out.println(car1.toString(car1));
    }
}
