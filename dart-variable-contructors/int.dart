void main(List<String> args) {
  //35 tane

  //Açıklama
  //Print etme
  //Print çıktısı

  int isInt = 33;

  print("bitLengthİ: kaç bit yer kaplıyor");
  print(isInt.bitLength);
  print("Çıktı: 6 \n");

  print("isEven: çift ise true döndürür");
  print(isInt.isEven);
  print("Çıktı: false \n");

  print("isOdd: tek ise true döndürür");
  print(isInt.isOdd);
  print("Çıktı: true \n");

  print("sign: pozitif mi? negatif mi? sıfır mı?");
  print(isInt.sign);
  print("Çıktı: 1 \n");

  print("hashCode: hash kodunu döndürür");
  print(isInt.hashCode);
  print("Çıktı: 33 \n");

  print("isFinite: sonlu mu?");
  print(isInt.isFinite);
  print("Çıktı: true \n");

  print("isInfinite: sonsuz mu?");
  print(isInt.isInfinite);
  print("Çıktı: false \n");

  print("isNaN: çift sayı mı?");
  print(isInt.isNaN);
  print("Çıktı: false \n");

  print("isNegative: negatif mi?");
  print(isInt.isNegative);
  print("Çıktı: false \n");

  print("runtimeType: çalışma zamanındaki değişken tipi");
  print(isInt.runtimeType);
  print("Çıktı: int \n");

  print("abs(): mutlak değeri");
  print(isInt.abs());
  print("Çıktı: 33 \n");

  print("ceil(): kendi değerini döndürür");
  print(isInt.ceil());
  print("Çıktı: 33 \n");

  print("ceilToDouble(): değerini double olarak döndürür");
  print(isInt.ceilToDouble());
  print("Çıktı: 33.0 \n");

  print("floor(): kesirli sayılarda tam kısmını alıp geri döndürür");
  print(isInt.floor());
  print("Çıktı: 33 \n");

  print(
      "floorToDouble(): kesirli sayılarda tam kısmını alıp double olarak geri döndürür");
  print(isInt.floorToDouble());
  print("Çıktı: 33.0 \n");

  print("gcd: sayı ile değişkenin ebob'unu döndürür");
  print(isInt.gcd(3));
  print("Çıktı: 3 \n");

  print("modInverse: modüler çarpımın tersini döndürür");
  isInt.modInverse(3);
  print(isInt);
  print("Çıktı: Hata veriyor\n");

  print("modPow: tamsayıyı üslü modül modülünün üssüne döndürür.");
  print(isInt.modPow(2, 3));
  print("Çıktı: 0 \n");

  print(
      "round(): kesirli sayılarda sıfırdan uzağa doğru yuvarlar. (3.5 => 4 ve -3.5 => -4 gibi)");
  print(isInt.round());
  print("Çıktı: 33 \n");

  print("roundToDouble(): round'u double olarak döndürür");
  print(isInt.roundToDouble());
  print("Çıktı: 33.0 \n");

  print(
      "toRadixString: Dize gösteriminde, '9' üzerindeki basamaklar için küçük harfler kullanılır, 'a' 10 ve 'z' 35'tir.");
  print(isInt.toRadixString(3));
  print("Çıktı: 1020 \n");

  print(
      "toSigned: Bu tam sayının en az anlamlı [genişlik] bitlerini döndürerek en yüksek tutulan biti işarete kadar genişletir");
  print(isInt.toSigned(3));
  print("Çıktı: 1 \n");

  print("toString(): stringe dönüştürür");
  print(isInt.toString());
  print("Çıktı: 33 \n");

  print(
      "toUnsigned: Bu tamsayının en önemsiz [genişlik] bitlerini negatif olmayan bir sayı olarak döndürür");
  print(isInt.toUnsigned(3));
  print("Çıktı: 1 \n");

  print("truncate: kesirli sayının tam kısmını alır.");
  print(isInt.truncate());
  print("Çıktı: 33 \n");

  print("truncateToDouble: truncat'i double olarak döndürür.");
  print(isInt.truncateToDouble());
  print("Çıktı: 33.0 \n");

  print("clamp");
  print(isInt.clamp(2, 3));
  print("Çıktı: 3 \n");

  print(
      "compareTo: karşılaştırma yapar. değişken bu sayıdan küçükse negatif bir sayı, eşitse sıfır ve diğerinden büyükse pozitif bir sayı döndürür.");
  print(isInt.compareTo(3));
  print("Çıktı: 1 \n");

  print("remainder: bölümünden kalanı verir");
  print(isInt.remainder(3));
  print("Çıktı: 0 \n");

  print("toDouble(): double'a döndürür");
  print(isInt.toDouble());
  print("Çıktı: 33.0 \n");

  print("toInt(): int'e döndürür");
  print(isInt.toInt());
  print("Çıktı: 33 \n");

  print("toStringAsExponential(): üstel olarak döndürür? (logaritma)");
  print(isInt.toStringAsExponential());
  print("Çıktı: 3.3e+1 \n");

  print(
      "toStringAsFixed: kesirli sayılarda virgülden sonra kaç basamak gösterilecek? Tam sayılarda virgülden sonra sıfır olarka görünür.");
  print(isInt.toStringAsFixed(3));
  print("Çıktı: 33.000 \n");

  print(
      "toStringAsPrecision: Bunu bir double'a dönüştürür ve tam olarak hassas anlamlı rakamlara sahip bir dize gösterimi döndürür.");
  print(isInt.toStringAsPrecision(3));
  print("Çıktı: 33.0 \n");

  print("noSuchMethod: ?");
  //print(isInt.noSuchMethod(invocation));
}
