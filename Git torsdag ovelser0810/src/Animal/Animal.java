package Animal;

public class Animal implements AnimalSound
{
    int numberOfLegs;

    public Animal(int numberOfLegs) {
        this.numberOfLegs = numberOfLegs;
    }


    public int getNumberOfLegs() {
        return numberOfLegs;
    }

    @Override
    public void makeSound() {
        System.out.println("Undefined animal makes no sound.");

    }
}

