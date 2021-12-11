import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

final number = List.generate(10, (i) => i);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        pageSnapping: true, //page transition lines
        physics: const ClampingScrollPhysics(),
        itemCount: number.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            child: Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                    Text("${number[index] + 1}",
                        style: Theme.of(context).textTheme.headline1),
                  ],
                )),
          );
        },
      ),
    );
  }
}
