import 'package:flutter/material.dart';

void main() => runApp(const WhatIsYourPersonality());

class WhatIsYourPersonality extends StatelessWidget {
  const WhatIsYourPersonality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "You!",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "You?!",
              style: TextStyle(
                color: Colors.yellow.shade700,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
            backgroundColor: Colors.purple,
          ),
          body: Container(
            width: double.infinity,
            color: Colors.purple,
            child: const HomePageWidget(),
          )),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
      padding: const EdgeInsets.all(5),
      child: Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hey there!",
                  style: TextStyle(
                    color: Colors.yellow.shade700,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Want to know what kind of personality you have?",
                  style: TextStyle(
                    color: Colors.yellow.shade700,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "'You!' helps you find out",
                  style: TextStyle(
                    color: Colors.yellow.shade700,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(20),
                          primary: Colors.yellow.shade700,
                          backgroundColor: Colors.transparent,
                          side: BorderSide(
                            color: Colors.yellow.shade700,
                            width: 2,
                          ),
                        ),
                        onPressed: () => debugPrint("Clicked"),
                        icon: const Text("Yes I want to know"),
                        label: const Icon(Icons.keyboard_arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
