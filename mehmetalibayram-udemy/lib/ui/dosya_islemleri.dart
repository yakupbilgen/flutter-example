import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class KayitIslemleri {
  //Uygulamanın kayıt konumunu alıyoruz.
  Future<String> get dosyaKonumu async {
    final konum = await getApplicationDocumentsDirectory();
    return konum.path;
  }

  //Dosyamızı oluşturuyoruz.
  Future<File> get yerelDosya async {
    final konum = await dosyaKonumu;
    return File("$konum/yenidoosya.txt");
  }

  //Dosya okuma işlemleri
  // ignore: missing_return
  Future<String> get dosyaOku async {
    try {
      final dosya = await yerelDosya;
      // ignore: unused_local_variable
      String dosyaIcerigi = await dosya.readAsString();
    } catch (ex) {
      return "Dosya okumada hata oluştu: $ex";
    }
  }

  //Dosya yazma işlemleri
  Future<File> dosyaYaz(String dosyaIcerigi) async {
    final dosya = await yerelDosya;
    return dosya.writeAsString(dosyaIcerigi);
  }
}

class DosyaIslemleri extends StatefulWidget {
  final KayitIslemleri kayitIslemi;

  const DosyaIslemleri({Key key, this.kayitIslemi}) : super(key: key);
  @override
  _DosyaIslemleriState createState() => _DosyaIslemleriState();
}

class _DosyaIslemleriState extends State<DosyaIslemleri> {
  final yaziController = TextEditingController();
  String veri = "";

  Future<File> veriKaydet() async {
    setState(() {
      veri = yaziController.text;
    });
    return widget.kayitIslemi.dosyaYaz(veri);
  }

//initState => sayfa ilk açıldığında çalışmasını istediğimi kodları yazdığımız method.
  @override
  void initState() {
    super.initState();
    widget.kayitIslemi.dosyaOku.then((String value) {
      setState(() {
        veri = value;
      });
    });
  }

  // ignore: non_constant_identifier_names
  void VeriOku() {
    widget.kayitIslemi.dosyaOku.then((String value) {
      setState(() {
        veri = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dosya İşlmeleri",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
                hintText:
                    "Dosyaya yazmak istediğiniz verileri buraya yazınız."),
            controller: yaziController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: veriKaydet,
                    child: Text(
                      "Kaydet",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: VeriOku,
                    child: Text(
                      "Oku",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(veri),
          )),
        ],
      ),
    );
  }
}
