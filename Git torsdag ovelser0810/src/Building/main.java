package Building;

public class main {
    private Room room;
    private Building building;

    public static void main(String[] args) {
        Walls wall = new Walls("concrete", 40);
        Room room1 = new Room(wall, 2, 4, 4);
        Room room2 = new Room(wall, 1, 1, 0);
        Room room3 = new Room(wall, 3, 4, 4);

        Building building = new Building(room1,3,3,false);

        System.out.println(building.getRooms().getNumberOfLamps());


    }
}


