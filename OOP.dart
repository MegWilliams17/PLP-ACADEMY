class Animal {
//properties of the class Animal
  late String name;
  late int numberoflegs;
  late int lifespan;

//functon to display the properties of the class
  void displayAnimal() {
    print(" $name");
    print(" $numberoflegs");
    print(" $lifespan");
  }
}

void main() {
//object to access the properties of the class
  var animal = Animal();
  animal.name = 'Lion';
  animal.numberoflegs = 4;
  animal.lifespan = 10;
  animal.displayAnimal();
}

//work with classes and objects in OOP
//class Student {
  //properties of the student
  //String name;
  //String phone;
  //bool isMarried;
  //bool isGraduated;
  //int age;
  //String country;
  //String hobby;

  //constructor-parametric constructor parameters
  //Student(this.name, this.phone, this.isMarried, this.isGraduated, this.age,
    //  this.country, this.hobby);

  //method / function
  //void display() {
    //print("Name: $name");
    //print("Phone Number: $phone");
    //print("Is married ${isMarried ? "Married" : "Single"}");
    //print("Graduated: ${isGraduated ? "Yes" : "No"}");
    //print("Age is: ${age}");
    //print("My Country is: ${country}");
    //print("My hobby is: $hobby");
  //}
//}

//Main function to create the object
//void main() {
  //var student =
    //  Student("Ekemini", "08152504323", false, true, 30, "Nigeria", "Dancing");

  // call the function
  //student.display();
//}
