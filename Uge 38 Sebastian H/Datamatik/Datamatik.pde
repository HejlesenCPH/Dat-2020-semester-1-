void setup() {

  Teacher teacher =  new Teacher("jesper", 30, false);
  Teacher teacher2 =  new Teacher("tess", 35, true);
  Student student = new Student("Sebastian", 24, false, 1);
  Student student2 = new Student("Jørgen", 22, false, 1);


  println(teacher.age);
  println(teacher2.age);
  println(student.name);
  println(student.age);
  println(student.isFemale);
  println(student.datamatikerTeam);
  println(student2.name);
  println(student2.age);
  println(student2.isFemale);
  println(student2.datamatikerTeam);
}
