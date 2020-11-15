import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';


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
          backgroundColor: Color.fromRGBO(7, 19, 28, 1),),
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
    final items = List<String>.generate(100, (i) => "Item $i");
    return new Scaffold(
      appBar: searchBar.build(context),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              /******************CARD*******************************/
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

                          splashColor: Color.fromRGBO(163, 237, 255, 0.5),
                          //pronounce or speak
                          onPressed: () {/* ... */},
                        ),
                        IconButton(
                          icon: Icon(Icons.text_fields_outlined),

                          splashColor: Color.fromRGBO(163, 237, 255, 0.5),
                          //Translations
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /****************************** END CARD*********************/
            ],
          );
        },
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
