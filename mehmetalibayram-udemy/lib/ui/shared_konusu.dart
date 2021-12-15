import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SharedKonusu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedState();
}

class SharedState extends State<SharedKonusu> {
  final isimController = TextEditingController();
  final soyIsimController = TextEditingController();
  final genelController = GlobalKey<FormState>();

  String ad = "";
  String soyad = "";
  bool kayitDurumu = false;
  int kayitNo = 0;

  void kayitYap(String ad, String soyad) async {
    final kayitAraci = await SharedPreferences.getInstance();

    if (genelController.currentState.validate()) {
      kayitAraci.setString("ad", ad);
      kayitAraci.setString("soyad", soyad);
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayitno", 1);

      Fluttertoast.showToast(
          msg: "Kayıt başarılı.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM);
    }
  }

  void kayitGoster() async {
    final kayitAraci = await SharedPreferences.getInstance();

    String kayitliAd = kayitAraci.getString("ad");
    String kayitliSoyad = kayitAraci.getString("soyad");
    bool kayitliDurum = kayitAraci.getBool("durum");
    int kayitliKayitNo = kayitAraci.getInt("kayitno");

    setState(() {
      ad = kayitliAd;
      soyad = kayitliSoyad;
      kayitDurumu = kayitliDurum;
      kayitNo = kayitliKayitNo;
    });

    Fluttertoast.showToast(
      msg: "Kayıt başarıyla gösterildi.",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void kayitSil() async {
    final kayitAraci = await SharedPreferences.getInstance();

    kayitAraci.remove("ad");
    kayitAraci.remove("soyad");
    kayitAraci.remove("durum");
    kayitAraci.remove("kayitno");

    Fluttertoast.showToast(msg: "Kayıt silindi");
  }

  void dispose() {
    isimController.dispose();
    soyIsimController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences Kullanımı"),
      ),
      body: Form(
        key: genelController,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                // ignore: missing_return
                validator: (value) {
                  if (value.length < 3) {
                    return "Adınız en az 3 karakter olmalıdır.";
                  }
                },
                controller: isimController,
                decoration: InputDecoration(hintText: "Adınızı giriniz."),
              ),
              TextFormField(
                // ignore: missing_return
                validator: (value) {
                  if (value.length < 3) {
                    return "Soyadınız en az 3 karakter olmalıdır.";
                  }
                },
                controller: soyIsimController,
                decoration: InputDecoration(hintText: "Soyadınızı giriniz."),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.amber,
                        child: Text(
                          "Kaydet",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => kayitYap(
                            isimController.text, soyIsimController.text),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.amber,
                        child: Text(
                          "Kaydı  Getir",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => kayitGoster(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.amber,
                        child: Text(
                          "Sil",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => kayitSil(),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ad: $ad"),
                      Text("Soyad: $soyad"),
                      Text("Kayıt Durumu: $kayitDurumu"),
                      Text("Kayıt Numarası: $kayitNo"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
