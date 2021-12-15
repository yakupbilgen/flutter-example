import 'package:flutter/material.dart';

import 'vtyardimcisi.dart';
import 'ogrenci.dart';

class VtAnasayfa extends StatefulWidget {
  @override
  _VtAnasayfaState createState() => _VtAnasayfaState();
}

class _VtAnasayfaState extends State<VtAnasayfa> {
  VtYardimcisi vtYardimcisi = VtYardimcisi();

  List<Ogrenci> ogrenciListesi = List<Ogrenci>();

  bool duzenleMi = false;

  final formController = GlobalKey<FormState>();
  final isimController = TextEditingController();
  final soyisimController = TextEditingController();
  final sinifController = TextEditingController();

  _ogrenciEkle() {
    vtYardimcisi
        .ogrenciKaydet(new Ogrenci(
            isimController.text, soyisimController.text, sinifController.text))
        .then((value) {
      debugPrint("Kayıt sayısı: " + value.toString());
      if (value > 0) {
        setState(() => listeYenile());
        Navigator.pop(context);
        isimController.clear();
        soyisimController.clear();
        sinifController.clear();
      }
    });
  }

  _ogrenciSil(Ogrenci ogrenci) {
    vtYardimcisi.ogrenciSil(ogrenci).then((result) {
      if (result > 0) listeYenile();
    });
  }

  _ogrenciGuncelle(int ogrNo) {
    var ogr = Ogrenci(
        isimController.text, soyisimController.text, sinifController.text);
    ogr.no = ogrNo;

    vtYardimcisi.ogrenciGuncelle(ogr).then((result) {
      if (result) {
        debugPrint(result.toString());
        listeYenile();
        Navigator.pop(context);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    listeYenile();
  }

  listeYenile() {
    vtYardimcisi.ognrecileriGetir().then((value) {
      setState(() {
        ogrenciListesi = value;
      });
    });
  }

  void eklemeEkraniAc({Ogrenci ogrenci}) {
    if (ogrenci != null) {
      duzenleMi = true;
      isimController.text = ogrenci.isim;
      soyisimController.text = ogrenci.soyisim;
      sinifController.text = ogrenci.sinif;
    } else {
      duzenleMi = false;
      isimController.clear();
      soyisimController.clear();
      sinifController.clear();
    }
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text(duzenleMi ? "Düzenle" : "Ekle"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: formController,
                    child: Column(
                      children: [
                        TextFormField(
                          // ignore: missing_return
                          validator: (val) {
                            if (val.length < 1) {
                              return "Lütfen ismi boş bırakmayın.";
                            }
                          },
                          controller: isimController,
                          decoration: InputDecoration(
                            hintText: "Öğrencini adını giriniz",
                          ),
                        ),
                        TextFormField(
                          // ignore: missing_return
                          validator: (val) {
                            if (val.length < 1) {
                              return "Lütfen soyismi boş bırakmayın.";
                            }
                          },
                          controller: soyisimController,
                          decoration: InputDecoration(
                            hintText: "Öğrencini soyadını giriniz",
                          ),
                        ),
                        TextFormField(
                          // ignore: missing_return
                          validator: (val) {
                            if (val.length < 1) {
                              return "Lütfen sınıfı boş bırakmayın.";
                            }
                          },
                          controller: sinifController,
                          decoration: InputDecoration(
                            hintText: "Öğrencini sınıfını giriniz",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  if (isimController.text.length > 0 &&
                      soyisimController.text.length > 0 &&
                      sinifController.text.length > 0) {
                    if (duzenleMi) {
                      _ogrenciGuncelle(ogrenci.no);
                    } else {
                      _ogrenciEkle();
                    }
                  }
                },
                child: Text(duzenleMi ? "Kaydet" : "Ekle"),
              ),
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text("İptal"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veri tabanı işlemleri"),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: eklemeEkraniAc)],
      ),
      body: ListView.builder(
        itemCount: ogrenciListesi.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                ListTile(
                  tileColor: Colors.red,
                  leading: Text("${ogrenciListesi[index].no}"),
                  title: Text(
                      "${ogrenciListesi[index].isim} ${ogrenciListesi[index].soyisim}"),
                  subtitle: Text("${ogrenciListesi[index].sinif}"),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    FlatButton(
                      onPressed: () => _ogrenciSil(ogrenciListesi[index]),
                      child: Text("Sil"),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    FlatButton(
                      onPressed: () =>
                          eklemeEkraniAc(ogrenci: ogrenciListesi[index]),
                      child: Text("Düzenle"),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
