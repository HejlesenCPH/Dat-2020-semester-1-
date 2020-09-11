String happy = "Happy";
String sad = "sad";
String firstName = "Sebastian "; 
String myNameIs = "Hi,my name is ";
String old = " old";
String am = "I am ";
String clap = "I clap my hands";
int age = 24;
int x = 1;

void setup() {


    println(firstName);
    println(age);
    println(myNameIs + firstName);
    println(am + age + old);
    println(clap);


    if (x < 2) 
    {
      println(happy);
    }else {
      println(sad);
    }
}
