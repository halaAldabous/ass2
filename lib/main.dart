import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Scaffold(
                drawer: Drawer(
                  backgroundColor: Colors.white.withAlpha(150),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 130),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("FIRST ELEMENT",
                              style: TextStyle(fontSize: 24)),
                        ),
                        ListTile(
                          title: Text("SECOND ELEMENT",
                              style: TextStyle(fontSize: 24)),
                        ),
                        ListTile(
                          title: Text("THIRD ELEMENT",
                              style: TextStyle(fontSize: 24)),
                        ),
                        ListTile(
                          title: Text("FOURTH ELEMENT",
                              style: TextStyle(fontSize: 24)),
                        ),
                        ListTile(
                          title: Text("FIFTHE ELEMENT",
                              style: TextStyle(fontSize: 24)),
                        ),
                      ],
                    ),
                  ),
                ),
                appBar: AppBar(
                  backgroundColor: Color(0xFF9d59eb),
                  elevation: 0,
                  toolbarHeight: 80,
                  title: Text(
                    "SECOND ASSIGNMENT",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                body: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    )
                  ],
                ));
          } else {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xFF9d59eb),
                  elevation: 0,
                  toolbarHeight: 80,
                  title: Text(
                    "SECOND ASSIGNMENT",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                body: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                         Text("FIRST ELEMENT",
                                  style: TextStyle(fontSize: 20),
                            ),
                          Text("SECOND ELEMENT",
                                  style: TextStyle(fontSize: 20),
                            ),
                            Text("THIRD ELEMENT",
                                  style: TextStyle(fontSize: 20),
                            ),
                           Text("FOURTH ELEMENT",
                                  style: TextStyle(fontSize: 20),
                            ),
                          Text("FIFTHE ELEMENT",
                                  style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ));
          }
        },
      ),
    );
  }
}
