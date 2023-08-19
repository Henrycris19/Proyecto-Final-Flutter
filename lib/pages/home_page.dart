import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_04/models/home_tile.dart';
import 'package:project_04/main.dart';
import 'package:project_04/pages/stickers.dart';
import 'package:project_04/pages/stickers2.dart';
import 'package:project_04/pages/trending_gifs.dart';
import 'package:project_04/pages/random_gifs.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SafeArea(
          
            child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                    
                      Text(
                        'Bienvenido',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //searchbar
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffcfcece),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Seleccione lo que desea ver.',             
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          ), 
                        textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 93,
                    decoration: BoxDecoration(
                        color: Color(0xffcfcece),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                    padding: EdgeInsets.all(0),
                                    color: Colors.lightGreen,
                                    child: Image(
                                      image: NetworkImage(
                                          'https://cdn.discordapp.com/attachments/874855653607370764/1142267244001374308/trending-logo.png'),
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(''),
                                      Text('Ver los 100 GIFs',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                      Text('más populares',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => trendingGif()),
                              );
                            },
                            child: Text('Ir'),
                          ),
                        
                        ]
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [Text('')],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 93,
                    decoration: BoxDecoration(
                        color: Color(0xffcfcece),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                    padding: EdgeInsets.all(0),
                                    color: Colors.lightGreen,
                                    child: Image(
                                      image: NetworkImage(
                                          'https://cdn.discordapp.com/attachments/874855653607370764/1142277108517838868/1200px-Twemoji_1f600.png'),
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(''),
                                      Text('Ver 100 GIFs',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                      Text('de emojis',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RandomGif()),
                              );
                            },
                            child: Text('Ir'),
                          ),
                        
                        ]
                    ),
                  ),

                  
                  Container(
                    child: Row(
                      children: [Text('')],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 93,
                    decoration: BoxDecoration(
                        color: Color(0xffcfcece),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                    padding: EdgeInsets.all(0),
                                    color: Colors.lightGreen,
                                    child: Image(
                                      image: NetworkImage(
                                          'https://cdn.discordapp.com/attachments/874855653607370764/1142280766248718376/UA4BAOkIiWHv2gse7njSg3ApWz_2ke21X65qQh4oMg55Q0hTDuVMLPMMKW_56JMB_XM.png'),
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(''),
                                      Text('Ver 100 Stickers',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                      Text('en tendencia',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Stickers()),
                              );
                            },
                            child: Text('Ir'),
                          ),
                        
                        ]
                    ),
                  ),

                
                ]))));
  }
}
