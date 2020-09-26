import java.util.Random; //<>//

class Game
{
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private Player player;
  private Dot[] enemies;
  private Dot [] extraLife;



  Game(int width, int height, int numberOfEnemies, int numberOfExtraLife)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    Dot playerDot = new Dot(0, 0, width-1, height-1);
    player = new Player(100,eww playerDot, keys);
    enemies = new Dot[numberOfEnemies];
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    extraLife = new Dot[numberOfExtraLife];
    for (int i = 0; i < numberOfExtraLife; ++i)
    {
      extraLife[i] = new Dot(width-1, height-1, width-1, height-1);
    }
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerLife()
  {
    return player.getLife();
  }

  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
  }

  public void update()
  {
    player.updatePlayer();
    //updatePlayer();
    updateEnemies();
    checkForCollisions();
    clearBoard();
    populateBoard();
    updateXtraLife(); 
    updateState();
  }


  private void updateState() {

    //if (
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }





  private void updateEnemies()
  {
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - enemies[i].getX();
        int dy = player.getY() - enemies[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }

  private void populateBoard()
  {
    //Insert player
    board[player.getX()][player.getY()] = 1;
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    for (int i = 0; i < extraLife.length; ++i) {
      board[extraLife[i].getX()][extraLife[i].getY()] = 3;
    }
  }

  private void checkForCollisions()
  {
    //Check enemy collisions
    for (int i = 0; i < extraLife.length; ++i)
    {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY())
      {
        //We have a collision
        player.subtractLife(5);
      }
    }
  }
  ////// Need rewriting 
  private void updateXtraLife() 
  {
    for (int i = 0; i < extraLife.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() + extraLife[i].getX();
        int dy = player.getY() + extraLife[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            extraLife[i].moveRight();
          } else
          {
            //Player is to the left
            extraLife[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          extraLife[i].moveDown();
        } else
        {//Player is up;
          extraLife[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          extraLife[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          extraLife[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          extraLife[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          extraLife[i].moveDown();
        }
      }
    }
  }


  //////
}
