int result = 0;
void setup () {

  sum(5, 3);
  println(result);
}



void sum (int a, int b) {

  int sum = ( a+b);
  result = result + sum;
  return;
}
