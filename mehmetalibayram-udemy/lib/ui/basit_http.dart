import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BasitHttp extends StatefulWidget {
  @override
  _BasitHttpState createState() => _BasitHttpState();
}

class _BasitHttpState extends State<BasitHttp> {
  var veri;
  var urlGet = "https://jsonplaceholder.typicode.com/posts/1";
  var urlPost = "https://jsonplaceholder.typicode.com/posts";
  Map postMap = {
    "title": "Uygulamadan gelen title",
    "body": "uygulamadan gelen body. Buna karşılık bir cevap gelecek.",
    "userId": "3"
  };

  getIslemiYap() {
    http.get(urlGet.toString()).then((getData) {
      print("Status code:${getData.statusCode} \nData: ${getData.body}");
      setState(() {
        veri = getData.body;
      });
    });
  }

  postIslemiYap() {
    http.post(urlPost.toString(), body: postMap).then((postData) {
      setState(() {
        veri = postData.body;
        print("Status code:${postData.statusCode} \nData: ${postData.body}");
      });
    });
  }

  icerigiTemizle() {
    setState(() {
      veri = "null";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Http İşlemleri"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RaisedButton(
                  color: Colors.deepPurple[200],
                  child: Text("GET"),
                  onPressed: getIslemiYap,
                ),
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.deepPurple[400],
                  child: Text("İçeriği sil"),
                  onPressed: icerigiTemizle,
                ),
              ),
              Expanded(
                child: RaisedButton(
                  color: Colors.deepPurple[600],
                  child: Text("POST"),
                  onPressed: postIslemiYap,
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: ListView(
                children: [Text("Gelen veri: $veri")],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
