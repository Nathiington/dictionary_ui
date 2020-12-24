import 'package:dictionary_ui/Bookmark.dart';
import 'package:dictionary_ui/History.dart';
import 'package:dictionary_ui/Phrases.dart';
import 'package:dictionary_ui/Words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'Words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(1, 44, 77, 1),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(17, 8, 26, 1),
        ),
        backgroundColor: Color.fromRGBO(73, 84, 110, 0.7),
        scaffoldBackgroundColor: Color.fromRGBO(33, 38, 51, 1),
        buttonColor: Color.fromRGBO(0, 145, 111, 1),
        cardColor: Color.fromRGBO(56, 74, 94, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        nextScreen:MyHomePage(),
        duration: 3000,
        splash: Icons.search,
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Color.fromRGBO(56, 74, 94, 1),
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: Text("Dictionary"),
        actions: [searchBar.getSearchAction(context)]);
  }

  _MyHomePageState() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar);
  }
  @override
  Widget build(BuildContext context) {
    //final items = List<String>.generate(100, (i) => "Item $i");
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: searchBar.build(context),
      body:ListView(
        children: <Widget>[
          /******************BOOKMARK CARD*******************************/
          Card(
            elevation:10.0,
            shadowColor: Colors.black,
            child: 
                ListTile(
                  title: Text('Bookmark',
                  style: TextStyle(fontSize: 27),),
                  trailing: Icon(Icons.bookmark_border,
                  size: 35.0,),
                  onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bookmark()),
                    );
                  },
                ),        
            ),
          /****************************** END CARD*********************/
          /******************PHRASES CARD*******************************/
          Card(
            elevation: 10.0,
            shadowColor: Colors.black,
            child: ListTile(
                  title: Text('Phrases',
                  style: TextStyle(fontSize: 27),),
                  trailing: Icon(Icons.text_snippet,
                  size: 35.0,),
                  onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Phrases()),
                    );
                  },
                ),  
            ),
          /****************************** END CARD*********************/
          /******************HISTORY CARD*******************************/
          Card(
              elevation: 10.0,
              shadowColor: Colors.black,
              child: ListTile(
                    title: Text("History",
                  style: TextStyle(fontSize: 27),),
                    trailing: Icon(Icons.history,
                  size: 35.0,),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                      );
                    },
                  ),             
            ),       
          /****************************** END CARD*********************/
          /******************WORDS CARD*******************************/
           Card(
              elevation: 10.0,
              shadowColor: Colors.black,
              child: ListTile(
                    title: Text('Words',
                  style: TextStyle(fontSize: 27),),
                    trailing: Icon(Icons.all_inclusive,
                  size: 35.0,),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WordPage()),
                      );
                    },
                  ),             
            ),        
          /****************************** END CARD*********************/
        ],
          
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Color.fromRGBO(56, 74, 94, 1),
        onPressed: () {},
        child: Icon(
          Icons.mic,
          color: Colors.white,
        ),
      ),
    );
  }
}

