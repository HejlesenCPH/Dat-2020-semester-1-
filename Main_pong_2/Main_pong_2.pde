Shield shield_L;
Shield shield_R;


boolean[] keys;

void setup() {
  size(750, 450);
  shield_L = new Shield(15, height/2, 50, 120);
  shield_R = new Shield(width-15, height/2, 50, 120);
  keys=new boolean[2];
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  keys[3]=false;
}

void draw() {
  background(0);
  //shield_L.move();
  shield_L.display();
  //shield_R.move();
  shield_R.display();
  fill(00, 200, 00);
  rect(00, 00, 20, 750);
  rect(730, 00, 750, 750);


  if ( keys[0]) 
  { 
    shield_L.speedY = -3;
  }
  if ( keys[1]) 
  {
    shield_L.speedY= +3;
  }
  if ( keys[2]) 
  {  
    shield_R.speedY= -3;
  }
  if ( keys[3]) 
  {
    shield_R.speedY = +3;
  }
}

void keyPressed()
{
  if (key=='w')
    keys[0]=true;
  if (key=='s')
    keys[1]=true;
  if (key== UP)
    keys[2]=true;
  if (key== DOWN)
    keys[3]=true;
}

void keyReleased()
{
  if (key=='w')
    keys[0]=false;
  if (key=='s')
    keys[1]=false;
  if (key==UP)
    keys[2]=false;
  if (key==DOWN)
    keys[3]=false;
} 




/* keyPressed() {
 if ( keyCode == UP) {
 speedY = -3;
 } else if ( keyCode == DOWN) { 
 SpeedY = +3;
 } else {
 speedY = 0;
 }
 
 
 if ( keyPressed) {
 if (key == 'w')
 speedY = tmpY -3;
 } else if ( key == 's') { 
 speedY = tmpY +3;
 } else {
 speedY = 0;
 }
 }
 
 */
