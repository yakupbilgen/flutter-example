main(List<String> args) {
  //4 tane

  //Açıklama
  //Print etme
  //Print çıktısı

  Object isObject = "Object değişkeni";

  print('hashCode: hash kodunu verir.');
  print(isObject.hashCode);
  print('195382533');

  print('runtimeType: çalışma zamanındaki tipini belirtir.');
  print(isObject.runtimeType);
  print('String');

  print('toString: stringe dönüştürür.');
  print(isObject.toString());
  print('Object değişkeni');

  print('noSuchMethod: ?');
  //print(isObject.noSuchMethod(invocation));
}
