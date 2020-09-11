/*
7.a create an integer called input and assign it a value of 20. use a loop to print the value and all values from there, until it reaches 0, with the following exceptions:
 if the number is 6, instead print the string "six".
 Once the number is half of the input value, print "HALF!"
 */

/*too jesper, the sketch underneath wont work, i've tried difrent setups and enther it prints all the numbers and put ind half between the numbers where there's half number. 
i'll follow the class today and see how other did. 

*/
void setup() {

  for ( int x =0; x >= 20; x++) {
    if ( x %  1 == 0) {
      print (x);
    }
    for ( int x1 =0; x >= 20; x1++) {

      {  
        if ( x1 % 2 == 0) {
          print(x1);
        }
      }
    }
  }
}
