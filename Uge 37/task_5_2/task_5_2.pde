void setup() 
{
  int weekDay = 0; // 0 = Monday, 6 = Sunday. 
  boolean weekend = false; 
  {

    if (weekDay < 5)
    {
      weekend = false;
    } else 
    {
      weekend = true;
    }
  }

  // Print the name of the weekday here: 
  if (weekDay <=0) {
    println("Monday");
  }


  // Print if it is weekend here:
  println(weekend);
}
