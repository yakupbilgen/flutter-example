import 'dart:io' as io;

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'ogrenci.dart';

class VtYardimcisi {
  static final VtYardimcisi _yardimci = new VtYardimcisi.icIslem();

  factory VtYardimcisi() => _yardimci;

  VtYardimcisi.icIslem();

  static Database _vt;

  Future<Database> get vertiTabani async {
    if (_vt != null) return _vt;
    _vt = await olusturDB();
    return _vt;
  }

  olusturDB() async {
    io.Directory dosyaKonumu = await getApplicationDocumentsDirectory();
    String dosyaYolu = join(dosyaKonumu.path, "okul.db");
    var veriTabani =
        await openDatabase(dosyaYolu, version: 1, onCreate: _ilkAcilis);
    return veriTabani;
  }

  _ilkAcilis(Database vt, int version) async {
    await vt.execute(
        "CREATE TABLE Ogrenci(no INTEGER PRIMARY KEY AUTOINCREMENT, isim TEXT, soyisim TEXT, sinif TEXT)");
  }

  Future<int> ogrenciKaydet(Ogrenci ogrenci) async {
    var veritabani = await vertiTabani;
    int result = await veritabani.insert("ogrenci", ogrenci.toMap());

    return result;
  }

  Future<List<Ogrenci>> ognrecileriGetir() async {
    var veritabani = await vertiTabani;

    List<Map> ogrenciListesi =
        await veritabani.rawQuery("SELECT * FROM Ogrenci");
    List<Ogrenci> ogrenciler = List<Ogrenci>();

    for (int i = 0; i < ogrenciListesi.length; i++) {
      var ogrenci = Ogrenci(ogrenciListesi[i]["isim"],
          ogrenciListesi[i]["soyisim"], ogrenciListesi[i]["sinif"]);
      ogrenci.numaraVer(ogrenciListesi[i]["no"]);
      ogrenciler.add(ogrenci);
    }

    return ogrenciler;
  }

  Future<int> ogrenciSil(Ogrenci ogrenci) async {
    var veritabani = await vertiTabani;
    int result = await veritabani
        .rawDelete("DELETE FROM Ogrenci WHERE no=?", [ogrenci.no]);

    return result;
  }

  Future<bool> ogrenciGuncelle(Ogrenci ogrenci) async {
    var veritabani = await vertiTabani;
    int result = await veritabani.update("Ogrenci", ogrenci.toMap(),
        where: "no=?", whereArgs: <int>[ogrenci.no]);

    return result > 0 ? true : false;
  }
}
