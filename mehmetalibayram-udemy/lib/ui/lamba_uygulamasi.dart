import 'package:flutter/material.dart';
import 'package:lamp/lamp.dart';
import 'dart:async';

class LambaUygulamasi extends StatefulWidget {
  @override
  _LambaUygulamasiState createState() => _LambaUygulamasiState();
}

class _LambaUygulamasiState extends State<LambaUygulamasi> {
  // ignore: unused_field
  bool _flashVarMi = false;
  bool _flashAcikmi = false;
  double _flashYogunluk = 1.0;
  String lamba = "lampon", btn = "Aç";

  @override
  void initState() {
    super.initState();
    ilkAcilis();
  }

  ilkAcilis() async {
    bool flashVarMi = await Lamp.hasLamp;
    setState(() {
      _flashVarMi = flashVarMi;
    });
  }

  Future flashAc() async {
    if (_flashAcikmi) {
      //Lamp.turnOff();
      lamba = "lampoff";
      btn = "Kapat";
    } else {
      //Lamp.turnOn(intensity: _flasYogunluk);
      lamba = "lampon";
      btn = "Aç";
    }
    var flasVarMi = await Lamp.hasLamp;
    setState(() {
      _flashVarMi = flasVarMi;
      _flashAcikmi = !_flashAcikmi;
    });
  }

  _yogunlukDegistir(double yogunluk) {
    Lamp.turnOn(intensity: yogunluk);
    setState(() {
      _flashYogunluk = yogunluk;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("El Feneri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/$lamba.png"),
            SizedBox(width: 200,height: 100,child: RaisedButton(
              child: Text("$btn",style: TextStyle(fontSize: 50),),
              onPressed: flashAc,
            ),),
            
            Slider(
              value: _flashYogunluk,
              onChanged: _flashAcikmi ? _yogunlukDegistir : null,
              
            ),
          ],
        ),
      ),
    );
  }
}
