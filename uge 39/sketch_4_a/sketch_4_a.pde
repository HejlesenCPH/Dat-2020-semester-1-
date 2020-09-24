int [] array = new int[100];  


void setup() {
  divide(15);
}


void divide(int x) {

  for (int a = 0; a < array.length; a++) {
    array[a] = a + 1;
    int [] result = array;
int  tmp= (result % x);


    println(tmp);
  }
}
