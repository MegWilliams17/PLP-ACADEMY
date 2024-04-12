// Student class

class Student {
  String Name;
  int Age;
  String GradeLevel;

  Student(this.Name, this.Age, this.GradeLevel);

// Creating student method
  void displayInfo() {
    print(
        'My name is $Name. I am $Age years old, and I am in the $GradeLevel.');
  }
}

// Teacher class
class Teacher {
  String Name;
  int Age;
  String Subject;

  Teacher(this.Name, this.Age, this.Subject);

// Creating Teacher method
  void DisplayInfo() {
    print(
        'My name is $Name and I am $Age years old. I handle the $Subject class.');
  }
}

// Main class to create student and teacher objects
class School {
  void DisplayStudentAndTeacherInfo() {
    // Creating student object
    var student = Student('Joel Kenda', 16, '11th grade');
    // Creating teacher object
    var teacher = Teacher('Archibong John', 36, 'Physics');

    // Printing student's information
    student.displayInfo();
    // Printing teacher's information
    teacher.DisplayInfo();
  }
}

void main() {
  // Creating School object
  var school = School();
  // Calling method to print student and teacher information
  school.DisplayStudentAndTeacherInfo();
}
