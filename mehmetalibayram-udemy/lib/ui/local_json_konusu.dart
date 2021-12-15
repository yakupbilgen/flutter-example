import 'dart:convert';

import 'package:flutter/material.dart';

class LocalJsonKonusu extends StatefulWidget {
  @override
  _LocalJsonKonusuState createState() => _LocalJsonKonusuState();
}

class _LocalJsonKonusuState extends State<LocalJsonKonusu> {
  List students;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json Konusu"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/data/data.json"),
              builder: (context, snapshot) {
                students = json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Adı: ${students[index]['ad']}"),
                          Text("Soyadı: ${students[index]['soyad']}"),
                          Text("OkulNo: ${students[index]['okulno']}"),
                          Text("Veli: ${students[index]['veli']['ad']}"),
                          Text("Yakınlık: ${students[index]['veli']['yakinlik']}"),
                        ],
                      ),
                    );
                  },
                  itemCount: students == null ? 0 : students.length,
                );
              }),
        ),
      ),
    );
  }
}
