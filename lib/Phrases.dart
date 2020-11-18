import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

class Phrases extends StatefulWidget {
  @override
  _PhrasesState createState() => _PhrasesState();
}

class _PhrasesState extends State<Phrases> {

  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: Text("Dictionary"),
        actions: [searchBar.getSearchAction(context)]);
  }

  _PhrasesState() {
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
        resizeToAvoidBottomInset: false,
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
                        title: Text('Phrase'),
                        subtitle: Text('Meaning'),
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
                            icon: Icon(Icons.bookmark_border),

                            splashColor: Color.fromRGBO(163, 237, 255, 0.5),
                            //bookmark
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
