class StudentValidetionMixin {
  String validateFirstName(String value) {
    if (value.length < 3) {
      return "İsim en az 3 karakter olmalıdır.";
    }
    return "";
  }

  String validateLastName(String value) {
    if (value.length < 2) {
      return "Soyad en az 2 karakter olmalıdır.";
    }
    return "";
  }

  String validateGrade(String value) {
    var grade = int.parse(value);
    if (grade < 0 || grade > 100) {
      return "Not 0-100 arasında olmalıdır.";
    }
    return "";
  }
}
