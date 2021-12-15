import 'package:flutter/material.dart';

class AppBarSayfasi extends StatefulWidget {
  final String gelenDeger;
  AppBarSayfasi({this.gelenDeger});

  @override
  _AppBarSayfasiState createState() => _AppBarSayfasiState();
}

class _AppBarSayfasiState extends State<AppBarSayfasi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.gelenDeger != null
                ? widget.gelenDeger
                : "AppBar Sayfası"),
            bottom: TabBar(
              tabs: [
                Icon(Icons.receipt),
                Icon(Icons.recent_actors),
                Icon(Icons.qr_code),
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.tealAccent,
              child: Center(child: Text("İlk sayfa")),
            ),
            Container(
              color: Colors.limeAccent,
              child: Center(child: Text("İkinci sayfa")),
            ),
            Container(
              color: Colors.deepOrange,
              child: Center(child: Text("Üçüncü sayfa")),
            ),
          ])),
    );
  }
}
