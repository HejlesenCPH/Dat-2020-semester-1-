boolean jobsDone = false;

void setup()
{
  if (isJobDone())
  {
  } else {
    println("Job's done!");
  }
}
boolean isJobDone()
{
  return jobsDone;
}
