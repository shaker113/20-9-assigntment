import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/screens/homePage.dart';

class appPage1 extends StatefulWidget {
  const appPage1({super.key});

  @override
  State<appPage1> createState() => _appPage1State();
}

class _appPage1State extends State<appPage1> {
  List i1 = [
    "https://lh3.googleusercontent.com/2hDpuTi-0AMKvoZJGd-yKWvK4tKdQr_kLIpB_qSeMau2TNGCNidAosMEvrEXFO9G6tmlFlPQplpwiqirgrIPWnCKMvElaYgI-HiVvXc=w600",
    "https://img-9gag-fun.9cache.com/photo/a3Q5VW5_460s.jpg",
    "https://i.redd.it/jeuusd992wd41.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhji226gHj4gFbuicz1mEYX25ZmEj8NrCo1bJFzfdtfiC_xWjL8CiZ_tt3TPKQ1-7GJwc&usqp=CAU",
    "http://pm1.narvii.com/6723/caa3a4d60d0d1cdf84fdc1c3048bc994b681f975_00.jpg",
    "https://pbs.twimg.com/media/Eyj1WpHXMAAkKTU.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 77, 167),
        title: Text("INSTAQEU"),
        centerTitle: true,
        actions: [
          TextButton.icon(
            onPressed: () {
              setState(() {
                Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName));
                // Navigator.of(context).popUntil((route) => route.isFirst); could also work
              });
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            label: Text(
              "logout",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "Stories",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton.icon(
                  onPressed: (() {}),
                  icon: Icon(Icons.play_arrow, color: Colors.black),
                  label: Text(
                    "Watch all",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: i1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 70,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("${i1[index]}"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    margin: EdgeInsets.only(left: 10, right: 10),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://virl.bc.ca/wp-content/uploads/2019/01/AccountIcon2.png"),
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill),
                          SizedBox(
                            width: 5,
                          ),
                          Text("shaker baker"),
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__340.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.comment),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.share)
                        ],
                      ),
                      Icon(Icons.archive_outlined)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                              image: NetworkImage(
                                  "https://images.squarespace-cdn.com/content/v1/5cf0d08d5fc69d000172462a/1600701210662-EWX3T3BQ5H2RXTZXRM01/Balazs+Professional+LinkedIn+Profile+Picture.jpg?format=500w"),
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill),
                          SizedBox(
                            width: 5,
                          ),
                          Text("ahmad al ahmad"),
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/414102/pexels-photo-414102.jpeg?cs=srgb&dl=pexels-pixabay-414102.jpg&fm=jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.comment),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.share)
                        ],
                      ),
                      Icon(Icons.archive_outlined)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
