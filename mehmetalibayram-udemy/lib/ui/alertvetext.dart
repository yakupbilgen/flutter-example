import 'package:flutter/material.dart';

class AlertVeTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertState();
}

class AlertState extends State<AlertVeTextField> {
  final yaziController = TextEditingController();
  final genelController = GlobalKey<FormState>();
  @override
  void dispose() {
    yaziController.dispose();
    super.dispose();
  }

  void selamla() {
    if (genelController.currentState.validate()) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text("Selamla Metnimiz"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("Merhaba ${yaziController.text}"),
                    Text("Sizi selamlıyorum"),
                  ],
                ),
              ),
              actions: [
                FlatButton(
                  onPressed: Navigator.of(context).pop,
                  child: Text("Tamam"),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield ve AlertView Kullanımı"),
      ),
      body: Form(
        key: genelController,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                // ignore: missing_return
                validator: (yazi) {
                  if (yazi.isEmpty) {
                    return "Bu kısmı boş bırakamazsını";
                  }
                },
                controller: yaziController,
                decoration: InputDecoration(hintText: "Adınızı giriniz."),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Colors.lime,
                  child: Text(
                    "Selamla",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onPressed: selamla,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
