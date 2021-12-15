import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../ui/widget/ana_card.dart';

class ArsivSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        physics: ClampingScrollPhysics(),
        primary: false,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 19,
        crossAxisCount: 2,
        children: [
          Card(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/ilksayfa"),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
                  fit: BoxFit.cover,
                )),
                //color: Colors.blue.shade100,
                margin: EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    color: Color(0xCDFFFFFF),
                    child: Text(
                      "Tek tıkama\nİlk sayfaya git",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Toast.show("Show slow toast message", context,
                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      "https://appinventiv.com/wp-content/uploads/sites/1/2015/09/Creating-Toasts-In-Android.jpg"),
                  fit: BoxFit.cover,
                )),
                //color: Colors.blue.shade100,
                margin: EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    color: Color(0xCDFFFFFF),
                    child: Text(
                      "Toast message",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: AnaCard("/imageviews", "assets/images/loading.gif",
                "Imageviews sayfasına git"),
          ),
          Card(
            child: AnaCard("/alertvetextfield", "assets/images/flutter.jpg",
                "Alert ve TextField"),
          ),
          Card(
            child: AnaCard("/sharedkonusu", "assets/images/aducaat.jpg",
                "Shared Preferences sayfasına git"),
          ),
          Card(
            child: AnaCard("/dosyakonusu", "assets/images/aducaat.jpg",
                "Dosya işlemleri sayfasına git"),
          ),
          Card(
            child: AnaCard("/jsonkonusu", "assets/images/aducaat.jpg",
                "Json konusu sayfasına git"),
          ),
          Card(
            child: AnaCard("/localjsonkonusu", "assets/images/aducaat.jpg",
                "Local Jon konusu sayfasına git"),
          ),
          Card(
            child: AnaCard("/basithttp", "assets/images/aducaat.jpg",
                "Basit HTTP sayfasına git"),
          ),
          Image.network("https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png"),
          Container(
            color: Colors.blue.shade100,
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Text(
              "Container",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
