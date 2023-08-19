import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_04/models/home_tile.dart';
import 'package:project_04/main.dart';
import 'package:project_04/pages/trending_gifs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, color: Colors.black), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_rounded, color: Colors.black),
            label: ''),
        BottomNavigationBarItem(
            icon:
                Icon(Icons.shopping_cart_checkout_rounded, color: Colors.black),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black), label: ''),
      ]),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          height: 93,
          decoration: BoxDecoration(
              color: Color(0xffcfcece),
              borderRadius: BorderRadius.circular(20)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(0),
                      color: Colors.lightGreen,
                      child: Image(
                        image: NetworkImage('https://cdn.discordapp.com/attachments/874855653607370764/1142259735102496819/facebook-trending.png'),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ver los 100 GIF en tendencia',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                        ElevatedButton(
                           onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => trendingGif()),
                            );
                            },
                            child: Text('Ver los 100 GIFs mas populares'),
),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.star_border_rounded),
          ]),

        )));
  }
}
