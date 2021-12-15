import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class IlkSayfa extends StatefulWidget {
  IlkSayfa({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<IlkSayfa> {
  int sayi = 0;

  void sayiyiArttir() {
    setState(() {
      sayi++;
    });
  }

  void sayiyiAzalt() {
    setState(() {
      sayi--;
    });
  }

  void sayiyiSifirla() {
    setState(() {
      sayi = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Page"),
        leading: Image.network("https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: "Air it",
            onPressed: () => Navigator.pushNamed(context, "/scaffoldpage"),
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: "Restitch it",
            onPressed: () => Navigator.pushNamed(context, "/imageviews"),
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: "Repair it",
            onPressed: () => Navigator.pushNamed(context, "/ilksayfa"),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text("Arttır"),
              onPressed: sayiyiArttir,
            ),
            Text(
              "Sayı: $sayi",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            FlatButton(
              child: Text("Azalt"),
              onPressed: sayiyiAzalt,
            ),
            SizedBox(
                child: Padding(
              padding: EdgeInsets.all(20),
            )),
            FlatButton(
              child: Text(
                "Sıfırla",
                style: TextStyle(fontSize: 33),
              ),
              onPressed: sayiyiSifirla,
            ),
            FlatButton(
              child: Text(
                "Toast Message",
                style: TextStyle(fontSize: 33),
              ),
              onPressed: () => Toast.show("Toast Message", context),
            ),
            FlatButton(
              child: Text("Basit HTTP", style: TextStyle(fontSize: 33)),
              onPressed: () => Navigator.pushNamed(context, "/basithttp"),
            ),
            FlatButton(
              child: Text("Lamba Uygulaması", style: TextStyle(fontSize: 33)),
              onPressed: () => Navigator.pushNamed(context, "/lambauygulamasi"),
            ),FlatButton(
              child: Text("Veritabanı İşlemleri", style: TextStyle(fontSize: 33)),
              onPressed: () => Navigator.pushNamed(context, "/vtanasayfa"),
            ),
          ],
        ),
      ),
    );
  }
}
