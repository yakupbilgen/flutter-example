void main(List<String> args) {
  //4 tane

  //Açıklama
  //Print etme
  //Print çıktısı

  dynamic isDynamic = "Dynamic veri";

  print('hashCode: hash kodunu verir.');
  print(isDynamic.hashCode); //hash kodunu verir.
  print("Çıktı: 264547461 \n");

  print('runtimeType: çalışma zamanındaki tipini verir');
  print(isDynamic.runtimeType);
  print("Çıktı: String \n");

  print('toString: stringe dönüştürür');
  print(isDynamic.toString());
  print("Çıktı: Dynamic veri \n");

  print('noSuchMethod: ?');
  //print(isDynamic.noSuchMethod(invocation));
}
