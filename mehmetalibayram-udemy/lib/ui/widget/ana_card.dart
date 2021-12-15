import 'package:flutter/material.dart';

class AnaCard extends StatelessWidget {
  final String gidilecekSayfa;
  final String resim;
  final String baslik;

  AnaCard(this.gidilecekSayfa,this.resim,this.baslik);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, gidilecekSayfa),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(resim),
          ),
        ),
        margin: EdgeInsets.all(5),
        alignment: Alignment.bottomCenter,
        child: Transform(
          alignment: Alignment.bottomCenter,
          transform: Matrix4.skewY(0.0)..rotateZ(0.0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            color: Color(0xCDFFFFFF),
            child: Text(baslik,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
