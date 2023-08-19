import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_04/pages/home_page.dart';




class Gif {
  final String id;
  final String url;
  final String title;

  Gif({required this.id, required this.url, required this.title});

  factory Gif.fromJson(Map<String, dynamic> json) {
    return Gif(
      id: json['id'],
      url: json['images']['fixed_height']['url'],
      title: json['title'],
    );
  }
}

class Stickers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Stickers en tendencia',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        
      ),
      home: GifListPage(),
    );
  
  
  }
}


class GifListPage extends StatefulWidget {
  @override
  _GifListPageState createState() => _GifListPageState();

  
}

class _GifListPageState extends State<GifListPage> {
  List<Gif> gifs = [];

  Future<void> fetchGifs() async {
    final response = await http.get(Uri.parse('https://api.giphy.com/v1/stickers/trending?api_key=ai9Esr9mgLg8Km1jQyS8J9HAJdzsuUOQ&limit=200&offset=0&rating=pg&bundle=sticker_layering'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> gifData = jsonData['data'];
      setState(() {
        gifs = gifData.map((item) => Gif.fromJson(item)).toList();
      });
    } else {
      throw Exception('Failed to load gifs');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchGifs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Stickers en tendencia'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navegar hacia atrás cuando se presiona el botón de "Volver atrás"
           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage()),
          );
          },
     
    )),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 50, ),
        itemCount: gifs.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Image.network(gifs[index].url, height: 200, width: 200, alignment: Alignment.center,),
            subtitle: 
            Text(gifs[index].title), textColor: Colors.black,
                      
            );  
             
        },
      ),
    );
  }
}