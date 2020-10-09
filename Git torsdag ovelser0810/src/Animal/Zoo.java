package Animal;

import java.util.ArrayList;

public class Zoo implements AnimalSound
{


    private ArrayList<Animal> animals = new ArrayList<>();

    @Override
    public void makeSound() {

    }

    Void makeAllSounds() {
            for (int i = 0; i > animals.size(); i++)  {

                 makeSound();

            }
        return makeAllSounds();
    }

    void addAnimals() {

        Animal a1 = new Animal(3);
        ArrayList<animals> animals = new ArrayList<>();
        animals.add(a1);
    }
}
