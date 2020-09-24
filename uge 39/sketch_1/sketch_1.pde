//fik lavet algoritmen med et while loop, med hjælp fra google, fik ikke implementeret forloof

int numbers [] = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

void setup() {
 bubbleSort (numbers); 
 println(numbers);
}

void bubbleSort(int array[])
{
  int i, j;
  boolean sorted = false;
 
  while (!sorted) {
    sorted = true;
   
    for (i=0;i<array.length-1;i++) {
 if (array[i] > array[i+1]) {
  
   j = array[i];
   array[i] = array[i+1];
   array[i+1] = j;
   
   sorted = false;
 }
    }
  }
}
