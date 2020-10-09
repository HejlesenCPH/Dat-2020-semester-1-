package Car;

public class Car {
    private String Make;
    private String Model;
    private int Year;
    private String BodyStyle;
    private Driver driver;

    public Car(String make, String model, int year, String bodyStyle, Driver driver) {
        Make = make;
        Model = model;
        Year = year;
        BodyStyle = bodyStyle;
        this.driver = driver;
    }


    public String toString(Car car) {
        return "Car{" +
                "Make:" + Make +
                ", Model:'" + Model + '\'' +
                ", Year:" + Year +
                ", BodyStyle:'" + BodyStyle + '\'' +
                '}';
    }

    public Driver getDriver() {
        return driver;
    }

    public void setDriver(Driver driver) {
        this.driver = driver;
    }
}
