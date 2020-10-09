package Building;

public class Walls {
    String walltype;
    float thinkness;


    public Walls(String walltype, float thinkness) {
        this.walltype = walltype;
        this.thinkness = thinkness;
    }

    public String getWalltype() {
        return walltype;
    }

    public float getThinkness() {
        return thinkness;
    }
}
