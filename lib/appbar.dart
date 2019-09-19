

import 'package:flutter/material.dart';

class AppSearch extends StatefulWidget {
   AppSearch({Key key, this.title}) : super(key: key);
  final String title ;
  //static get routeName => null;
  // static const routeName ='/detail_maison';
  // get routeName => null;

  @override
  State<StatefulWidget> createState(){
    return _AppSearchState();
  }
}

class _AppSearchState extends State<AppSearch> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10, (i) => "Ingenieur $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset('images/topographe.jpeg',
                    fit:BoxFit.cover
                    ),
                    title: Text('${items[index]}'),
                    trailing: Icon(Icons.visibility),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}