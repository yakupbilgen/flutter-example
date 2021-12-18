class Student {
  int id;
  String firstName;
  String lastName;
  int grade;
  String status;

  Student.withid(int id, String firstName, String lastName, int grade) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }

  Student(String firstName, String lastName, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }

  Student.withoutInfo();

  String get getFirstName {
    return "Ogr - " + this.firstName;
  }

  set setFirstName(String value) {
    this.firstName = value;
  }

  String get getStatus {
    String message = "";
    if (this.grade > 50) {
      message = ("Geçti.");
    } else if (this.grade >= 40) {
      message = ("Bütünlemeye kaldı.");
    } else {
      message = "Kaldı.";
    }

    return message;
  }

  //get => okumak
  //set => yazmak
}
