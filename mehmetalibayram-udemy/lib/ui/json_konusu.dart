import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';

/*
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}
*/

//Modelimiz
class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }
}

Future<Post> getPost() async {
  final gelenData =
      await http.get("http://jsonplaceholder.typicode.com/posts/1");

  if (gelenData.statusCode == 200) {
    return Post.fromJson(json.decode(gelenData.body));
  } else {
    throw Exception(
        "Veri getirilirken hata oluştu. Hata kodu: ${gelenData.statusCode}");
  }
}

class JsonKonusu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Konusu"),
      ),
      body: Center(
        child: FutureBuilder<Post>(
            future: getPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                int userId = snapshot.data.userId;
                int id = snapshot.data.id;
                String title = snapshot.data.title;
                String body = snapshot.data.body;

                return Card(
                  child: Column(
                    children: [
                      Text("UserId: $userId"),
                      Text("Id: $id"),
                      Text("Title: $title"),
                      Text("Body: $body")
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("Hata oluştu: ${snapshot.error}");
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
