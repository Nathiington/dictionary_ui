import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary',
      theme: ThemeData(       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
      SearchBar searchBar;

      AppBar buildAppBar(BuildContext context)
      {
        return new AppBar(
          backgroundColor: Color.alphaBlend(Colors.blue, Colors.black),
          title: Text("Dictionary"),
          actions: [searchBar.getSearchAction(context)]
        );
      }

      _MyHomePageState(){
      searchBar = new SearchBar (
      inBar: false,
      setState: setState,
      onSubmitted: print,
      buildDefaultAppBar: buildAppBar
      );
      }
      



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            
             /******************CAAAARRRRRD*******************************/
           Card(
             shadowColor: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Word'),
                    subtitle: Text('Definition'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.multitrack_audio_rounded),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //pronounce or speak
                        onPressed: () {/* ... */},
                      ),
                      IconButton(
                        icon: Icon(Icons.text_fields_outlined),
                        color: Colors.blue,
                        splashColor:Color.fromRGBO(163, 237, 255,0.5),
                        //Translations
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /****************************** END CAAAAAAAAAAAAAARRRRRRRRRD*********************/
               /******************CAAAARRRRRD*******************************/
           Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Word'),
                    subtitle: Text('Definition'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.multitrack_audio_rounded),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //pronounce or speak
                        onPressed: () {/* ... */},
                      ),
                      IconButton(
                        icon: Icon(Icons.text_fields_outlined),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //Translations
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /******************************END CAAAAAAAAAAAAAARRRRRRRRRD*********************/
            
               /******************CAAAARRRRRD*******************************/
           Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Word'),
                    subtitle: Text('Definition'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.multitrack_audio_rounded),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //pronounce or speak
                        onPressed: () {/* ... */},
                      ),
                      IconButton(
                        icon: Icon(Icons.text_fields_outlined),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //Translations
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /******************************END CAAAAAAAAAAAAAARRRRRRRRRD*********************/
            
               /******************CAAAARRRRRD*******************************/
           Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Word'),
                    subtitle: Text('Definition'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.multitrack_audio_rounded),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //pronounce or speak
                        onPressed: () {/* ... */},
                      ),
                      IconButton(
                        icon: Icon(Icons.text_fields_outlined),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255,0.5),
                        //Translations
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /****************************** END CAAAAAAAAAAAAAARRRRRRRRRD*********************/
            
               /******************CAAAARRRRRD*******************************/
           Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Word'),
                    subtitle: Text('Definition'),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.multitrack_audio_rounded),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255, 0.5),
                        //pronounce or speak
                        onPressed: () {/* ... */},
                      ),
                      IconButton(
                        icon: Icon(Icons.text_fields_outlined),
                        color: Colors.blue,
                        splashColor: Color.fromRGBO(163, 237, 255, 0.5),
                        //Translations
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /******************************END CAAAAAAAAAAAAAARRRRRRRRRD*********************/
            
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){

        },
        child: Icon(Icons.mic,
                    color: Colors.white,),
      ),
    );
  }
}
