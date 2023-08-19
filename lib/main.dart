import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _loading = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45),
              Text(
                "♠",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Cats and Dogs Detector.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: _loading
                    ? Container(
                        width: 350,
                        child: Column(
                          children: [
                            Image.asset("assets/cat_dog_default.jpg"),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //leaving this nothing for now
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text("Capture a Photo",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () {
                        //leaving this nothing for now
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text("Select a Photo",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
