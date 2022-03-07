import 'package:flutter/material.dart';
import 'package:hamroflutterapp/screens/settings_screen.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    debugPrint("i am executed");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hamro Flutter App"),
          actions: [
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => SettingsScreen(
                          data: "I am sending something from homepage")))),
              child: Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.settings),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });

              debugPrint("count : $count");
            },
            child: Icon(Icons.plus_one)),
        body: Column(children: [
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PhotoView(
                            imageProvider:
                                const AssetImage("assets/images/myimage.jpeg"),
                          ))),
              child: Image.asset("assets/images/myimage.jpeg")),
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 30.0),
            ),
          )
        ]));
  }
}
