import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mehmetalibayram_udemy/ui/appbar_sayfasi.dart';

import '../sayfalar/arsiv.dart';
import '../sayfalar/bilgilendirme.dart';
import '../sayfalar/degerlendirme.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScaffoldStatePage();
}

class ScaffoldStatePage extends State<ScaffoldPage> {
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  int aktifOge = 0;

  gecerliSayfa(int aktifSayfa) {
    switch (aktifSayfa) {
      case 0:
        return ArsivSayfasi();
        break;
      case 1:
        return BilgilendirmeSayfasi();
        break;
      case 2:
        return DegerlendirmeSayfasi();
        break;
      default:
        return ArsivSayfasi();
        break;
    }
  }

  void _ornekFonksiyon(int i) {
    _keyScaffold.currentState
        .showSnackBar(SnackBar(content: Text("Scaffold snackbar, $i")));
    debugPrint(_keyScaffold.currentState.toString());
  }

  void _ornekBottomSheet() {
    _keyScaffold.currentState.showBottomSheet((context) {
      return Container(
        height: 250,
        color: Colors.amber,
        child: ListViewMethod(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerMethod(),
      key: _keyScaffold,
      appBar: AppBar(
        elevation: 10,
        title: Text("My Fancy Dress"),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.twitch),
            tooltip: "Air it",
            onPressed: () => Navigator.pushNamed(context, "/ilksayfa"),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.twitter),
            tooltip: "Restitch it",
            onPressed: () => Navigator.pushNamed(context, "/scaffoldpage"),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.amazon),
            tooltip: "Repair it",
            onPressed: () => Navigator.pushNamed(context, "/imageviews"),
          ),
          PopupMenuButton(
            onSelected: (secilen) {
              debugPrint(secilen.toString());

              switch (secilen) {
                case 0:
                  _ornekFonksiyon(secilen);
                  break;
                case 1:
                  _ornekFonksiyon(secilen);

                  break;
                case 2:
                  _ornekFonksiyon(secilen);

                  break;
                default:
                  return ArsivSayfasi();
                  break;
              }
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  value: 0,
                  child: ListTile(
                    leading: Icon(Icons.share),
                    title: Text("Paylaş"),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    leading: Icon(Icons.star),
                    title: Text("Puan ver"),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: ListTile(
                    leading: Icon(Icons.contact_page),
                    title: Text("İletişim"),
                  ),
                )
              ];
            },
          ),
        ],
      ),
      body: gecerliSayfa(aktifOge),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(FontAwesomeIcons.bootstrap),
              onPressed: () => _ornekBottomSheet(),
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.adversal),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.affiliatetheme),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.facebook),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.galacticRepublic),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.expandArrowsAlt),
              onPressed: () {},
            )
          ],
        ),
      ),

      /*BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: aktifOge,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.archive),
            backgroundColor: Colors.blueAccent,
                // ignore: deprecated_member_use
                title: Text("Arşiv"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.announcement),
            backgroundColor: Colors.blueAccent,
                // ignore: deprecated_member_use
                title: Text("Bilgilendirme"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assessment),
            backgroundColor: Colors.blueAccent,
                // ignore: deprecated_member_use
                title: Text("Değerlendirme"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.aspect_ratio),
            backgroundColor: Colors.blueAccent,
                // ignore: deprecated_member_use
                title: Text("Aspect"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.read_more),
            backgroundColor: Colors.blueAccent,
                // ignore: deprecated_member_use
                title: Text("Read More"),
              ),
              
            ],
            onTap: (int i) {
              aktifOge = i;
    
              setState(() {});
            },*/
    );
  }

  drawerMethod() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.lightBlue.shade100,
              height: 120,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  child: FlutterLogo(
                    size: 60,
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ),
            Expanded(
              child: ListViewMethod(),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ListViewMethod() {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        ListTile(
          leading: Icon(Icons.place),
          title: Text("AppBar Sayfası"),
          subtitle: Text("Gitmek için tıklayın."),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      AppBarSayfasi(gelenDeger: "Anasayfadan geldi")),
            );
          },
        ),
        Divider(
          color: Colors.red,
          height: 1,
        ),
        ListTile(
          leading: Icon(Icons.place),
          title: Text("Alarmlar"),
          subtitle: Text("Alarmları burada bulabilirsini"),
          trailing: Icon(Icons.arrow_right),
          onTap: () => Navigator.pop(context),
        ),
        Divider(
          color: Colors.red,
          height: 1,
        ),
        ListTile(
          leading: Icon(Icons.place),
          title: Text("Uygulamalarımız"),
          subtitle: Text("Uygulamalarımızı burada bulabilirsini"),
          trailing: Icon(Icons.arrow_right),
          onTap: () => Navigator.pop(context),
        ),
        Divider(
          color: Colors.red,
          height: 1,
        ),
        ExpansionTile(
          leading: Icon(Icons.ac_unit_outlined),
          title: Text("Hakkımızda"),
          children: [
            ListTile(
              title: Text("Biz kimiz?"),
            ),
            ListTile(
              title: Text("Misyonumuz"),
            ),
            ListTile(
              title: Text("Vizyonumuz"),
            ),
          ],
        )
      ],
    );
  }
}
