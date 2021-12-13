void main(List<String> args) {
  //33 tane

  //Açıklama
  //Print etme
  //Print çıktısı

  String isString = "String değişken";

  print(
      'codeUnits: Bu dizenin UTF-16 kod birimlerinin değiştirilemez bir listesi.');
  print(isString.codeUnits);
  print(
      "Çıktı: [83, 116, 114, 105, 110, 103, 32, 100, 101, 287, 105, 351, 107, 101, 110] \n");

  print('hashCode: hash kodunu verir');
  print(isString.hashCode);
  print("Çıktı: 927861865 \n");

  print('isEmpty: boş mu?');
  print(isString.isEmpty);
  print("Çıktı: zzzzzzzzzzz \n");

  print('isNotEmpty: boş değil mi?');
  print(isString.isNotEmpty);
  print("Çıktı: true \n");

  print('length: uzunluğu');
  print(isString.length);
  print("Çıktı: 15 \n");

  print('runes: Bu dizenin Unicode kod noktalarının bir Iterable ı');
  print(isString.runes);
  print(
      "Çıktı: (83, 116, 114, 105, 110, 103, 32, 100, 101, 287, 105, 351, 107, 101, 110) \n");

  print('runtimeType: çalışma zamanındaki değişken tipi');
  print(isString.runtimeType);
  print("Çıktı: String \n");

  print("codeUnitAt: Verilen [dizin] 'de 16 bit UTF-16 kod birimini döndürür.");
  print(isString.codeUnitAt(3));
  print("Çıktı: 105 \n");

  print('compareTo: verilen değerle karşılaştırma yapar');
  print(isString.compareTo('i'));
  print("Çıktı: -1 \n");

  print('contains: verilen değeri içeriyor mu?');
  print(isString.contains('i'));
  print("Çıktı: true \n");

  print('endsWith: belirtilen değerle mi bitiyor?');
  print(isString.endsWith('i'));
  print("Çıktı: false \n");

  print("indexOf: belirtilen ifadeyi içeren ilk index numarasını verir");
  print(isString.indexOf('i'));
  print("Çıktı: 3 \n");

  print('lastIndexOf: belirtilen ifadeyi içeren son index numarasını verir');
  print(isString.lastIndexOf('i'));
  print("Çıktı: 10 \n");

  print("padLeft: [Genişlik] 'ten kısaysa bu dizeyi sol tarafa doldurur.");
  print(isString.padLeft(3));
  print("Çıktı: String değişken \n");

  print("padRight: [Genişlik] 'ten kısaysa bu dizeyi sağ tarafa doldurur.");
  print(isString.padRight(3));
  print("Çıktı: String değişken \n");

  print('replaceAll: belirtilen değeri diğeriyle değiştirir');
  print(isString.replaceAll('i', 'g'));
  print("Çıktı: Strgng değgşken \n");

  print(
      'replaceAllMapped: [kimden] ile eşleşen tüm alt dizeleri hesaplanmış bir dizeyle değiştirin.');
  print(isString.replaceAllMapped('i', (match) => 'ş'));
  print("Çıktı: Strşng değşşken \n");

  print(
      'replaceFirst: İlk [from] oluşumunun [to] ile değiştirildiği yeni bir dize oluşturur.');
  print(isString.replaceFirst('i', 'g'));
  print("Çıktı: Strgng değişken \n");

  print(
      "replaceFirstMapped: Bu dizede [from] 'nin ilk geçtiği yeri değiştirin.");
  print(isString.replaceFirstMapped('i', (match) => 'ş'));
  print("Çıktı: Strşng değişken \n");

  print(
      'replaceRange: [başlangıç] ile [bitiş] arasındaki alt dizeyi [değiştirme] ile değiştirir');
  print(isString.replaceRange(3, 5, 'i'));
  print("Çıktı: Strig değişken \n");

  print('split: string ifadeyi böler ve bir liste olarak döndürür');
  print(isString.split('i'));
  print("Çıktı: [Str, ng değ, şken] \n");

  print(
      'splitMapJoin: Dizeyi böler, parçalarını dönüştürür ve bunları yeni bir dizede birleştirir.');
  print(isString.splitMapJoin('i'));
  print("Çıktı: String değişken \n");

  print('startsWith: belirtilen değerle mi başlıyor?');
  print(isString.startsWith('i'));
  print("Çıktı: false \n");

  print('substring: belirtilen indexden sonrasını döndürür');
  print(isString.substring(3));
  print("Çıktı: ing değişken \n");

  print('toLowerCase: tüm ifadeyi küçük harfe dönüştürür');
  print(isString.toLowerCase());
  print("Çıktı: string değişken \n");

  print('toUpperCase: tüm ifadeyi büyük harfe dönüştürür');
  print(isString.toUpperCase());
  print("Çıktı: STRING DEĞIŞKEN \n");

  print('trim: boşlukları siler');
  print(isString.trim());
  print("Çıktı: String değişken \n");

  print('trimLeft: soldan boşlukları siler');
  print(isString.trimLeft());
  print("Çıktı: String değişken \n");

  print('trimRight: soldan boşlukları siler');
  print(isString.trimRight());
  print("Çıktı: String değişken \n");

  print('allMatches: Bu kalıbı dizeyle tekrar tekrar eşleştirir.');
  print(isString.allMatches('i'));
  print("Çıktı: () \n");

  print('matchAsPrefix: bu kalıbı dizenin başlangıcına göre eşleştirir.');
  print(isString.matchAsPrefix('i'));
  print("Çıktı: null \n");

  print('toString: stringe dönüştürür');
  print(isString.toString());
  print("Çıktı: String değişken \n");

  print('noSuchMethod: ?');
  //print(isString.noSuchMethod(invocation));
}
