package Building;

public class Room {
    Walls walls;
    int numberOfDoors;
    int numberOfLamps;
    int numberOfWindows;


    public Walls getWalls() {
        return walls;
    }

    public int getNumberOfDoors() {
        return numberOfDoors;
    }

    public int getNumberOfLamps() {
        return numberOfLamps;
    }

    public int getNumberOfWindows() {
        return numberOfWindows;
    }

    public Room(Walls walls, int numberOfDoors, int numberOfLamps, int numberOfWindows) {
        this.walls = walls;
        this.numberOfDoors = numberOfDoors;
        this.numberOfLamps = numberOfLamps;
        this.numberOfWindows = numberOfWindows;

    }
}
