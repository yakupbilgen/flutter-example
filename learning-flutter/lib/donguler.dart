
void main() {
  bool sistemeGirmisMi = false;
  if (sistemeGirmisMi) {
    print("Giriş yapılmış");
  } else {
    print("""
Giriş yapılmamış""");
  } //end if

  int puan = 45;
  if (puan >= 50) {
    print("Geçti");
  } else {
    print("Kaldı");
  } //end if

  String not = "A"; //switch case yapısında büyük küçük harf duyarlılığı vardır!
  switch (not) {
    case "A":
      {
        print("Harf notu: A");
      }
      break;
    case "B":
      {
        print("Harf notu: B");
      }
      break;
    case "C":
      {
        print("Harf notu: C");
      }
      break;
    case "D":
      {
        print("Harf notu: D");
      }
      break;
    default:
      {
        print("Harf notu tanımlanamadı.");
      }
      break;
  } // end switch

  var number = 1;
  while (number <= 10) {
    print(number);
    number++;
  } //end while

  var number2 = 1;
  do {
    print("Number: " + number2.toString());
    number2++;
  } while (number2 > 1000);
} //end main
