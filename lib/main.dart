import 'package:dictionary_ui/Bookmark.dart';
import 'package:dictionary_ui/History.dart';
import 'package:dictionary_ui/Phrases.dart';
import 'package:dictionary_ui/Words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
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
        cardColor: Color.fromRGBO(98, 123, 150, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
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
      body: ListView(
        children: <Widget>[
          /******************BOOKMARK CARD*******************************/
          Card(
            shadowColor: Colors.black,
            child: 
                ListTile(
                  title: Text('Bookmark'),
                  leading: Icon(Icons.bookmark_border),
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
            shadowColor: Colors.black,
            child: ListTile(
                  title: Text('Phrases'),
                  leading: Icon(Icons.text_snippet),
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
            shadowColor: Colors.black,
            child: ListTile(
                  title: Text("History"),
                  leading: Icon(Icons.history),
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
            shadowColor: Colors.black,
            child: ListTile(
                  title: Text('Words'),
                  leading: Icon(Icons.all_inclusive),
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
        onPressed: () {},
        child: Icon(
          Icons.mic,
          color: Colors.white,
        ),
      ),
    );
  }
}
