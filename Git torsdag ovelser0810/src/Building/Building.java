package Building;

public class Building {
    Room rooms;
    int numberOfBathroom;
    int numberOfFloors;
    boolean isOfficebuilding;

    public Building(Room rooms, int numberOfBathroom, int numberOfFloors, boolean isOfficebuilding) {
        this.rooms = rooms;
        this.numberOfBathroom = numberOfBathroom;
        this.numberOfFloors = numberOfFloors;
        this.isOfficebuilding = isOfficebuilding;
    }

    public Room getRooms() {
        return rooms;
    }

    public int getNumberOfBathroom() {
        return numberOfBathroom;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public boolean isOfficebuilding() {
        return isOfficebuilding;
    }
}