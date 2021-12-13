void main(List<String> args) {
  //4 tane

  //Açıklama
  //Print etme
  //Print çıktısı

  bool isBool = true;

  print('hashCode: hash kodunu verir.');
  print(isBool.hashCode);
  print("Çıktı: 1231 \n");

  print('runtimeType: çalışma zamanındaki tipini belirtir.');
  print(isBool.runtimeType);
  print("Çıktı: bool \n");

  print('toString: stringe dönüştürür.');
  print(isBool.toString());
  print("Çıktı: true \n");

  print('noSuchMethod: ?');
  //print(isBool.noSuchMethod(invocation));
}
