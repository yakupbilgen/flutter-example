void main(List<String> args) {
  //33 tane

  //Açıklama
  //Print etme
  //Print çıktısı
  var isVar = "Var veri";

  print(
      "codeUnits: char olarak karakterlerin ascii kodunu liste şeklinde geri döner");
  print(isVar.codeUnits);
  print('Çıktı: [86, 97, 114, 32, 118, 101, 114, 105] \n');

  print("hashCode: karakterlerin ascii kodunu verir");
  print(isVar.hashCode);
  print('Çıktı: 192549445 \n');

  print("isEmpty: değişkene atama yapılıp yapılmadığını kontrol eder");
  print(isVar.isEmpty);
  print('Çıktı: false \n');

  print("isNotEmpty: değişkene atama yapılıp yapılmadığını kontrol eder");
  print(isVar.isNotEmpty);
  print('Çıktı: true \n');

  print("length: karakter uzunluğunu verir.");
  print(isVar.length);
  print('Çıktı: 8 \n');

  print(
      "runes: char olarak karakterlerin ascii kodunu liste şeklinde geri döner");
  print(isVar.runes);
  print('Çıktı: zzzzzzz \n');

  print("runtimeType: çalışma zamanındaki tipini belirtir.");
  print(isVar.runtimeType);
  print('Çıktı: (86, 97, 114, 32, 118, 101, 114, 105) \n');

  print("codeUnitAt: int tipindeki değişkenin ascii kodunu verir");
  print(isVar.codeUnitAt(0));
  print('Çıktı: 86 \n');

  print("compareTo: sıralama yapar");
  print(isVar.compareTo("other"));
  print('Çıktı: -1 \n');

  print("contains: belirtilen değeri içerip içermediğini kontrol eder");
  print(isVar.contains("r"));
  print('Çıktı: true \n');

  print("endsWith: son karakterin belirtlen olup olmadığını kontrol eder.");
  print(isVar.endsWith("r"));
  print('Çıktı: false \n');

  print("indexOf: Belirtilen değerin index numarasını verir.");
  print(isVar.indexOf("r"));
  print('Çıktı: 2 \n');

  print("lastIndexOf: belirtilen değerden sonra kaç index olduğunu belirtir.");
  print(isVar.lastIndexOf("r"));
  print('Çıktı: 6 \n');

  print("padLeft: sol taraftan boşluk vermeye yarar");
  print(isVar.padLeft(2));
  print('Çıktı: Var veri \n');

  print("padRight: sağ taraftan boşluk vermeye yarar");
  print(isVar.padRight(2));
  print('Çıktı: Var veri \n');

  print("replaceAll: belirtilen değeri başka bir değerle değiştirmeye yarar");
  print(isVar.replaceAll("r", "ğ"));
  print('Çıktı: Vağ veği \n');

  print("replaceAllMapped: ");
  print(isVar.replaceAllMapped("r", (match) => "r"));
  print('Çıktı: Var veri \n');

  print(
      "replaceFirst: En başta belirtilen değeri belirtlen değerle değiştirir.");
  print(isVar.replaceFirst("V", "r"));
  print('Çıktı: rar veri \n');

  print("replaceRange: Belirtilen araklıktaki belirtilen değeri değiştirir.");
  print(isVar.replaceRange(1, 5, "r"));
  print('Çıktı: Vreri \n');

  print("split: Belirtilen değer hariç geri kalanını alır.");
  print(isVar.split("er"));
  print('Çıktı: [Var v, i] \n');

  print("splitMapJoin: ?");
  print(isVar.splitMapJoin("r"));
  print('Çıktı: Var veri \n');

  print("startsWith: Belirtilen karakter ile mi başlıyor?");
  print(isVar.startsWith("r"));
  print('Çıktı: false \n');

  print("substring: Belirtilen indexten öncesini silip geri kalanını alır.");
  print(isVar.substring(2));
  print('Çıktı: r veri \n');

  print("toLowerCase: tüm hepsini küçük harf yapar");
  print(isVar.toLowerCase());
  print('Çıktı: var veri \n');

  print("toUpperCase: tüm hepsini büyük harf yapar.");
  print(isVar.toUpperCase());
  print('Çıktı: VAR VERI \n');

  print("trim: boşlukları siler");
  print(isVar.trim());
  print('Çıktı: Var veri \n');

  print("trimLeft: baştaki boşlukları siler");
  print(isVar.trimLeft());
  print('Çıktı: Var veri \n');

  print("trimRight: sondaki boşlukları siler.");
  print(isVar.trimRight());
  print('Çıktı: Var veri \n');

  print("allMatches: ?");
  print(isVar.allMatches("r"));
  print('Çıktı: () \n');

  print("matchAsPrefix: ?");
  print(isVar.matchAsPrefix("r"));
  print('Çıktı: null \n');

  print("toString: Stringe dönüştürür");
  print(isVar.toString());
  print('Çıktı: Var veri \n');

  print("noSuchMethod: ?");
  //print(isVar.noSuchMethod(invocation));
}
