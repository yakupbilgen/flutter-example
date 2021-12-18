import 'package:flutter/material.dart';
import 'package:learning_flutter/models/student.dart';
import 'package:learning_flutter/screens/student_add.dart';
import 'package:learning_flutter/screens/student_edit.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String appBarTitle = "Öğrenci Takip Sistemi";
  Student selectedStudent = Student.withid(0, "", "", 0);

  List<Student> students = [
    Student.withid(1, "Yakup", "Bir", 25),
    Student.withid(2, "Eyüp", "lki", 65),
    Student.withid(3, "Halil", "Uc", 45)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://pbs.twimg.com/profile_images/1308400389352554497/xt_BkFez_400x400.jpg"),
                      ),
                      title: Text(students[index].firstName +
                          " " +
                          students[index].lastName),
                      subtitle: Text("Sınavdan aldığı not : " +
                          students[index].grade.toString() +
                          " [" +
                          students[index].getStatus +
                          "]"),
                      trailing: buildStatusIcon(students[index].grade),
                      onTap: () {
                        setState(() {
                          selectedStudent = students[index];
                        });

                        print(selectedStudent.firstName);
                      },
                    );
                  })),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: (Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text("Toplam Öğrenci: " + students.length.toString())
                        ],
                      ))),
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: (Row(
                        children: [
                          Text("Seçili Öğrenci: " + selectedStudent.firstName)
                        ],
                      )))
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 1),
                      Text("Yeni Öğrenci")
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentAdd(students)));
                    //var message = "Yeni öğrenci eklendi";
                    //mesajGoster(context, message);
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.update),
                      SizedBox(width: 10),
                      Text("Güncelle")
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                StudentEdit(selectedStudent)));
                    //var message = "Öğrenci bilgileri güncellendi.";
                    //mesajGoster(context, message);
                  },
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 10),
                      Text("Sil")
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      students.remove(selectedStudent);
                    });
                    var message = "Öğrenci silindi.";
                    mesajGoster(context, message);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String sinavHesapla({int grade}) {
    String mesaj = "";
    if (grade >= 50) {
      mesaj = ("Geçti");
    } else if (grade >= 40) {
      mesaj = ("Bütünlemeye kaldı.");
    } else {
      mesaj = ("Kaldı");
    }

    return mesaj;
  }

  void mesajGoster(BuildContext context, String message) {
    var alert = AlertDialog(
      title: Text("Alert dialog title"),
      content: Text(message.toString()),
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade >= 40) {
      return Icon(Icons.segment);
    } else {
      return Icon(Icons.clear);
    }
  }
}
