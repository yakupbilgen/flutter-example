import 'package:flutter/material.dart';

import './ui/appbar_sayfasi.dart';
import 'veritabani/vtanasayfa.dart';
import './ui/basit_http.dart';
import './ui/dosya_islemleri.dart';
import './ui/json_konusu.dart';
import './ui/shared_konusu.dart';
import './ui/imageviews.dart';
import './ui/scaffold.dart';
import './ui/statefull_page.dart';
import './ui/alertvetext.dart';
import './ui/local_json_konusu.dart';
import './ui/lamba_uygulamasi.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => ScaffoldPage(
           // title: "İlk sayfamız",
          ),
      "/ilksayfa": (context) => IlkSayfa(title: "İlk sayfamız"),
      "/scaffoldpage": (context) => ScaffoldPage(),
      "/imageviews": (context) => ImageViews(),
      "/alertvetextfield": (context) => AlertVeTextField(),
      "/sharedkonusu": (context) => SharedKonusu(),
      "/dosyakonusu": (context) =>
          DosyaIslemleri(kayitIslemi: KayitIslemleri()),
      "/jsonkonusu": (context) => JsonKonusu(),
      "/localjsonkonusu": (context) => LocalJsonKonusu(),
      "/basithttp": (context) => BasitHttp(),
      "/lambauygulamasi": (context) => LambaUygulamasi(),
      "/vtanasayfa": (context) => VtAnasayfa(),
      "/appbarsayfasi": (context) => AppBarSayfasi(),
    },
    //theme: ThemeData(fontFamily: "AkayaTelivigala-Regular"),
  ));
}
