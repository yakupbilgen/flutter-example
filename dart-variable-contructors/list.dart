void main(List<String> args) {
  //59 tane

  //Açıklama
  //Print etme
  //Print çıktısı

  List<dynamic> isList = [1, 2, 3, 3.432, "Ali", "Veli", true, false];

  print('length: Listenin uzunluğunu verir');
  print(isList.length);
  print("Çıktı: 8 \n");

  print('reversed: tersten sıralama yapar');
  print(isList.reversed);
  print("Çıktı: (false, true, Veli, Ali, 3.432, 3, 2, 1) \n");

  print('hashCode: hash kodunu verir');
  print(isList.hashCode);
  print("Çıktı: 848936402 \n");

  print('runtimeType: çalışma zamanındaki değişken tipini verir');
  print(isList.runtimeType);
  print("Çıktı: List<dynamic> \n");

  print('first: ilk elemanı verir');
  print(isList.first);
  print("Çıktı: 1 \n");

  print('isEmpty: liste boş mu?');
  print(isList.isEmpty);
  print("Çıktı: false \n");

  print('isNotEmpty: liste boş değil mi?');
  print(isList.isNotEmpty);
  print("Çıktı: true \n");

  print(
      'iterator: Bu Yinelemenin öğelerini yinelemeye izin veren yeni bir Yineleyici döndürür.');
  print(isList.iterator);
  print("Çıktı: Instance of 'ListIterator<dynamic>' \n");

  print('last: son elemanı verir');
  print(isList.last);
  print("Çıktı: false \n");

  print('single: liste tek elemanlı mı?');
  //isList.single();
  print(isList);
  print("Çıktı: [1, 2, 3, 3.432, Ali, Veli, true, false] \n");

  print('add: yeni eleman ekler');
  //print(isList.add('yeni eleman'));
  print("Çıktı: zzzzzzzzzzzzzz \n");

  print('addAll: nesne sayısına göre listenin uzunluğunu genişletir.');
  //print(isList.addAll(iterable));
  print("Çıktı: \n");

  print("asMap: Listeyi map'e dönüştürür");
  print(isList.asMap());
  print(
      "Çıktı: {0: 1, 1: 2, 2: 3, 3: 3.432, 4: Ali, 5: Veli, 6: true, 7: false} \n");

  print(
      'cast: Bu listenin bir görünümünü R örneklerinin bir listesi olarak döndürür');
  print(isList.cast());
  print("Çıktı: [1, 2, 3, 3.432, Ali, Veli, true, false] \n");

  print(
      'clear: Bu listedeki tüm nesneleri kaldırır; listenin uzunluğu sıfır olur.');
  isList.clear();
  print(isList);
  print("Çıktı: [] \n");

  print('fillRange: [FillValue] ile bir dizi öğenin üzerine yazar.');
  isList.fillRange(1, 2, 'Değiştirilen');
  print(isList);
  print("Çıktı: [1, Değiştirilen, 3, 3.432, Ali, Veli, true, false] \n");

  print(
      'getRange: Bir dizi öğe üzerinde yinelenen bir [Yinelenebilir] oluşturur.');
  print(isList.getRange(1, 2));
  print("Çıktı: (2) \n");

  print("indexOf: elemanın index'ini verir");
  print(isList.indexOf('Ali'));
  print("Çıktı: 4 \n");

  print('indexWhere: belirtilen şartı sağlayan indexi verir');
  print(isList.indexWhere((element) => false));
  print("Çıktı: -1 \n");

  print('insert: belirtilen indexe eleman ekler');
  isList.insert(3, '3.indexe eklenen eleman');
  print(isList);
  print(
      "Çıktı: [1, 2, 3, 3.indexe eklenen eleman, 3.432, Ali, Veli, true, false] \n");

  print(
      'insertAll: belirtilen indexnden itibaren, birden fazla elemanı listeye ekler.');
  isList.insertAll(2, ['çoklu olarak eklenen eleman', 22, 3.14]);
  print(isList);
  print(
      "Çıktı: [1, 2, çoklu olarak eklenen eleman, 22, 3.14, 3, 3.432, Ali, Veli, true, false] \n");

  print('lastIndexOf: son elemanın indexini verir');
  print(isList.lastIndexOf('Veli'));
  print("Çıktı: 5 \n");

  print('lastIndexWhere: şarta göre son elemanın indexini verir');
  print(isList.lastIndexWhere((element) => false));
  print("Çıktı: -1 \n");

  print('remove: belirtilen elemanı listeden kaldırır');
  print(isList.remove('3'));
  print("Çıktı: false \n");

  print('removeAt: belirtilen indexe ait elemanı listeden kaldırır');
  print(isList.removeAt(3));
  print("Çıktı: 3.432 \n");

  print('removeLast: son elemanı listeden kaldırır');
  print(isList.removeLast());
  print("Çıktı: false \n");

  print('removeRange: belirtilen index aralığındaki elemanları kaldırır');
  isList.removeRange(1, 3);
  print(isList);
  print("Çıktı: [1, 3.432, Ali, Veli, true, false] \n");

  print('removeWhere: belirtilen şarta göre elemanı kaldırır');
  isList.removeWhere((item) => item.length == 3);
  print(isList);
  print("Çıktı: Listemiz dinamik olduğu için bunu yapamıyoruz. \n");

  print(
      'replaceRange: belirtilen index aralığındaki elemanları başka elemanlarla değiştirir');
  isList.replaceRange(1, 2, ['değiştirilen eleman']);
  print(isList);
  print("Çıktı: [1, değiştirilen eleman, 3, 3.432, Ali, Veli, true, false] \n");

  print('retainWhere: belirtilen şartı sağlamayan tüm elemanları kaldırır');
  isList.retainWhere((element) => false);
  print(isList);
  print("Çıktı: [] \n");

  print('setAll: belirtilen indexten başlayıp elemanların üzerine yazar');
  //print(isList.setAll(index, iterable));
  print("Çıktı: \n");

  print('setRange: belirtilen index aralığındaki elemanları verir');
  isList.setRange(1, 1, []);
  print(isList);
  print("Çıktı: [1, 2, 3, 3.432, Ali, Veli, true, false] \n");

  print('shuffle: listenin elemanlarının sırasını rastgele değiştirir');
  isList.shuffle();
  print(isList);
  print("Çıktı: [3, true, Ali, 1, Veli, 2] \n");

  print('sort: küçükten büyüğe yada a dan z ye sıralama yapar');
  isList.sort();
  print(isList);
  print("Çıktı: Listemiz dinamik olduğundan bunu yapamıyoruz \n");

  print(
      'sublist: başlangıç ve bitiş arasındaki elemanları yeni bir liste olarak döndürür');
  print(isList.sublist(3, 5));
  print("Çıktı: [2, 1] \n");

  print('toString: stringe dönüştürür');
  print(isList.toString());
  print("Çıktı: [Ali, true, Veli, 2, 1, 3] \n");

  print('any: ?');
  print(isList.any((element) => false));
  print("Çıktı: false \n");

  print('contains: belirtilen değeri içeriyor mu?');
  print(isList.contains(3));
  print("Çıktı: true \n");

  print("Çıktı: zzzzzzzzzzzzzz \n");
  print('elementAt: belirtilen indexdeki elemanı döndürür');
  print(isList.elementAt(3));
  print("Çıktı: 2 \n");

  print(
      'every: elemanların her biri için, belirtilen şartı sağlıyorsa true, sağlamıyorsa false döndürür.');
  print(isList.every((element) => false));
  print("Çıktı: false \n");

  print('expand: liste içinde başka liste varsa elemanları ana listeye ekler.');
  isList.expand((element) => []);
  print(isList);
  print("Çıktı: [1, 2, 3, 3.432, Ali, Veli, true, false] \n");

  print('firstWhere: belirtilen şartı sağlayan ilk elemanı döndürür.');
  isList.firstWhere((element) => false);
  print(isList);
  print("Çıktı: Listemiz dinamik olduğundan bunu yapamıyoruz. \n");

  print(
      'fold: Listenin her bir öğesini mevcut bir değerle yinelemeli olarak birleştirerek bir listeyi tek bir değere indirger');
  //print(isList.fold(initialValue, (previousValue, element) => null));
  print("Çıktı: \n");

  print(
      'followedBy: Bu yinelenebilir ve [other] öğelerinin tembel birleşimini döndürür.');
  isList.followedBy([]);
  print(isList);
  print("Çıktı: Listemiz dinamik olduğundan bunu yapamıyoruz. \n");

  print('forEach: listenin her bir elemanı için bir döngü çalıştırır.');
  //print(isList.forEach((element) {}));
  print("Çıktı: zzzzzzzzzzzzzz \n");

  print("join: Her öğeyi bir [Dize]'ye dönüştürür ve dizeleri birleştirir.");
  print(isList.join());
  print("Çıktı: 3Veli2trueAli1 \n");

  print('lastWhere: belirtilen şartı sağlayan son elemanı verir');
  print(isList.lastWhere((element) => false));
  print("Çıktı: Listemiz dinamik olduğundan bunu yapamıyoruz. \n");

  print('map: listeyi mape çevirir');
  print(isList.map((e) => null));
  print("Çıktı: (null, null, null, null, null, null) \n");

  print(
      'reduce: Sağlanan işlevi kullanarak listenin öğelerini yinelemeli olarak birleştirerek bir listeyi tek bir değere düşürür.');
  print(isList.reduce((value, element) => null));
  print("Çıktı: null \n");

  print('singleWhere: şartı sağlayan tek elemanı döndürür');
  print(isList.singleWhere((element) => element.lenght == 1));
  print("Çıktı: Listemiz dinamik olduğundan bunu yapamıyoruz. \n");

  print('skip: belirtilen indexdeki hariç diğer elemanları döndürür');
  print(isList.skip(3));
  print("Çıktı: (Ali, 3, Veli) \n");

  print(
      'skipWhile: [Test] yerine getirilirken önde gelen öğeleri atlayan bir Yinelenebilir döndürür.');
  print(isList.skipWhile((value) => false));
  print("Çıktı: (true, 2, 1, Ali, 3, Veli) \n");

  print(
      'take: Bu yinelenebilir [say] ilk öğelerinin tembel yinelemesini döndürür.');
  print(isList.take(3));
  print("Çıktı: (true, 2, 1) \n");

  print("takeWhile: şartı sağlayan ana öğelerin tembel yinelemesini döndürür.");
  print(isList.takeWhile((value) => false));
  print("Çıktı: () \n");

  print('toList: listeye dönüştürür');
  print(isList.toList());
  print("Çıktı: [true, 2, 1, Ali, 3, Veli] \n");

  print('toSet: sete dönüştürür');
  print(isList.toSet());
  print("Çıktı: {true, 2, 1, Ali, 3, Veli} \n");

  print('where: şartı sağlayan tüm elemanlarla yeni bir liste döndürür');
  print(isList.where((element) => false));
  print("Çıktı: () \n");

  print('whereType: şartta belirtilen tipteki tüm elemanları döndürür');
  print(isList.whereType<int>());
  print("Çıktı: (2, 1, 3) \n");

  print('noSuchMethod: ?');
  //print(isList.noSuchMethod(invocation));
}
