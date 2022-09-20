import 'package:flutter/material.dart';
import 'package:myapp/screens/appPage1.dart';

import 'homePage.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Divider(
              height: 100,
              color: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.only(right: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return homepage();
                              },
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  Text(
                    "INSTAQEU",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 42, 40, 52),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Divider(
              height: 100,
              color: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                inputFormatters: [],
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 123, 112, 232),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.account_box,
                    color: Color.fromARGB(255, 123, 112, 232),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 86, 77, 167),
                  ),
                  label: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 5, bottom: 20),
                  hintText: "abc@def.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22), gapPadding: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 123, 112, 232), width: 1.5),
                  ),
                ),
                cursorHeight: 25,
                cursorColor: Color.fromARGB(255, 123, 112, 232),
                cursorRadius: Radius.circular(3),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                obscureText: true,
                inputFormatters: [],
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.account_box,
                    color: Color.fromARGB(255, 123, 112, 232),
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color.fromARGB(255, 86, 77, 167),
                  ),
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 5, bottom: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(22),
                    gapPadding: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 123, 112, 232), width: 1.5),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 123, 112, 232),
                    ),
                  ),
                ),
                cursorHeight: 25,
                cursorColor: Color.fromARGB(255, 123, 112, 232),
                cursorRadius: Radius.circular(3),
              ),
            ),
            Divider(
              height: 50,
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
                          return appPage1();
                        },
                      ),
                    );
                  },
                );
              },
              child: Text(
                "LOGIN ",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(310, 45),
                  backgroundColor: Color.fromARGB(255, 123, 112, 232),
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22))),
            ),
          ],
        ),
      ),
    );
  }
}
