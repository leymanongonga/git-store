class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

class School {
  void createObjectsAndPrintInfo() {
    var student = Student('John', 15, 10);
    var teacher = Teacher('Mr. Smith', 35, 'Mathematics');

    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  var school = School();
  school.createObjectsAndPrintInfo();
}
