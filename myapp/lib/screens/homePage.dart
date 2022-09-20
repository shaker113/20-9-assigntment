import 'package:flutter/material.dart';
import 'package:myapp/screens/loginScreen.dart';

import 'appPage1.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Divider(
                height: 100,
                color: Colors.transparent,
              ),
              Text(
                "INSTAQEU",
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 42, 40, 52),
                    fontWeight: FontWeight.w600),
              ),
              Divider(
                height: 60,
                color: Colors.transparent,
              ),
              Image(
                image: AssetImage("images/1.png"),
                width: 100,
                height: 100,
              ),
              Divider(
                height: 250,
                color: Colors.transparent,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return appPage1();
                        },
                      ),
                    );
                  });
                },
                child: Text(
                  "CONTINUE AS GUEST",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 123, 112, 232),
                  ),
                ),
              ),
              Divider(
                height: 30,
                color: Colors.transparent,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return screen1();
                          },
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "LOGIN WITH YOUR ACCOUNT",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 123, 112, 232),
                  shadowColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
