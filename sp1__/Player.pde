class Player {

  private Dot dot;
  private int life;
  //private String color;
  private Keys keys;
  private Boolean arrowKeys = false;


  public Player(int life, Dot dot, Keys keys) {
    this.life = life;
    //this.color = color;
    this.dot = dot;
    this.keys = keys;
  }

  public Dot getDot() {
    return dot;
  }
  
  public int getX() {
    return dot.x;
  }
  
  public int getY() {
    return dot.y;
  }

  public int getLife() {
    return life;
  }
  
  public void subtractLife(int x) {
   this.life = life - x; 
  }

  /*public String getColor() {
    return color;
  }*/

  private void updatePlayer()
  {
    if (arrowKeys) {
      //arrow key movement
    } else {
      if (keys.wDown() && !keys.sDown())
      {
        dot.moveUp();
      }
      if (keys.aDown() && !keys.dDown())
      {
        dot.moveLeft();
      }
      if (keys.sDown() && !keys.wDown())
      {
        dot.moveDown();
      }
      if (keys.dDown() && !keys.aDown())
      {
        dot.moveRight();
      }
    }

    //Update player
  }
}
