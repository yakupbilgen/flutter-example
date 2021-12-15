import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İmage Views"),
      ),
      body: ListView(
        children: [
          Text(
            "Assets içindeki resim",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/flutter.jpg"),
          Text(
            "\n\nİnternetten gelen resim",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Image.network(
              "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg"),
          Text(
            "\n\nİnternetteki remi placeholder ile kullanma",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FadeInImage.assetNetwork(
              placeholder: "assets/images/loading.gif",
              image: "https://i.redd.it/tn0k20exrnb51.jpg")
        ],
      ),
    );
  }
}
