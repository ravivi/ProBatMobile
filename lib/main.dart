import 'package:finale/detail_maison.dart';
import 'package:flutter/material.dart';
import './login_sign.dart';
import './login.dart';
import './sign.dart';
import './favorite_houses.dart';
import 'nav_bar.dart';
import './detail_maison.dart';
import './expert.dart';
import './appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProBat',
      
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        //InterfaceLoginSingup.routeName: (ctx)=> Login(),
        //InterfaceLoginSingup.routeName2 :(ctx)=> Sign(),
        Login.routeName:(ctx) => Nav(),
        Detail.routeName:(ctx) => Favorite(),
      },
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   ScrollController _hideButtonController;

//   var _isVisible;
//   @override
//   initState() {
//     super.initState();
//     _isVisible = true;
//     _hideButtonController = new ScrollController();
//     _hideButtonController.addListener(() {
//       if (_hideButtonController.position.userScrollDirection ==
//           ScrollDirection.reverse) {
//        if(_isVisible)
//         setState(() {
//           _isVisible = false;
//           print("**** $_isVisible up");
//         });
//       }
//       if (_hideButtonController.position.userScrollDirection ==
//           ScrollDirection.forward) {
//         if(!_isVisible)
//         setState(() {
//           _isVisible = true;
//           print("**** $_isVisible down");
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text(widget.title),
//       ),
//       body: new Center(
//           child: new CustomScrollView(
//         controller: _hideButtonController,
//         shrinkWrap: true,
//         slivers: <Widget>[
//           new SliverPadding(
//             padding: const EdgeInsets.all(20.0),
//             sliver: new SliverList(
//               delegate: new SliverChildListDelegate(
//                 <Widget>[
//                   const Text('I\'m dedicating every day to you'),
//                   const Text('Domestic life was never quite my style'),
//                   const Text('When you smile, you knock me out, I fall apart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('And I thought I was so smart'),
//                   const Text('I realize I am crazy'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )),
//       bottomNavigationBar: AnimatedContainer(
//         duration: Duration(milliseconds: 1000),
//         height: _isVisible ? 60.0 : 0.0,
//         child: _isVisible
//             ? new BottomNavigationBar(
//                 type: BottomNavigationBarType.fixed,
//                 items: [
//                   new BottomNavigationBarItem(
//                     icon: Icon(Icons.home),
//                     title: Text('Home'),
//                   ),
//                   new BottomNavigationBarItem(
//                     icon: Icon(Icons.card_giftcard),
//                     title: Text('Offers'),
//                   ),
//                   new BottomNavigationBarItem(
//                     icon: Icon(Icons.account_box),
//                     title: Text('Account'),
//                   ),
//                 ],
//                 currentIndex: 0,

//               )
//             : Container(
//                 color: Colors.white,
//                 width: MediaQuery.of(context).size.width,
//               ),
//       ),

//     );
//   }
// }





























// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   animate()=>myAnimation.forward();
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: AnimatedIcon(
//         icon: AnimatedIcon.play_pause,
//         progress: myAnimation,
//       ),
//     );

//   }
// }
  //TextEditingController editingController = TextEditingController();

//   final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
//   var items = List<String>();

//   @override
//   void initState() {
//     items.addAll(duplicateItems);
//     super.initState();
//   }
//   Widget containerContent(){
//  return Container(
//             margin: EdgeInsets.all(10),
//             height: 370,
//             child: Card(
//               elevation: 5,
//               child: Column(
//                 children: <Widget>[
//                   Container(
                  
//                     height: 200,
//                     width: double.infinity,
//                     child: Image.asset('images/villa.jpg',
//                     fit:BoxFit.cover),
//                   ),
//                   Column(
                    
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
//                         alignment: Alignment.topLeft,
//                         child :Text('Duplex',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, )),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
//                         alignment: Alignment.topLeft,
//                         child :Text('5 pièces',style: TextStyle(color: Colors.grey)),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
//                         alignment: Alignment.topLeft,
//                         child: Text('Un etage avec garage et piscine ...', style: TextStyle(color: Colors.grey),),
//                       ),
                      
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10),

//                             child:Icon(Icons.favorite_border),

//                           ),
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10),

//                             child:Icon(Icons.visibility, color: Colors.red,),

//                           ),
//                           Container(
//                             //padding: EdgeInsets.symmetric(horizontal: 2),

//                             child:Text('2,2k'),

//                           )
                          
                          
//                         ],
//                       ),
                      
//                     ],
//                   ),
                  
//                   Container(
                     
//                     alignment: Alignment.bottomRight,
//                     margin: EdgeInsets.only(bottom:15, right: 15),
//                     child: RaisedButton(
//                     child: Text('Detail', style: TextStyle(color: Colors.white),),
//                     onPressed: (){
//                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));
//                     },
                    
//                     color: Colors.redAccent,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),

//                   ),
                  
//                 ],
//               ),
//             ),
//           );
// }

//   void filterSearchResults(String query) {
//     List<String> dummySearchList = List<String>();
//     dummySearchList.addAll(duplicateItems);
//     if(query.isNotEmpty) {
//       List<String> dummyListData = List<String>();
//       dummySearchList.forEach((item) {
//         if(item.contains(query)) {
//           dummyListData.add(item);
//         }
//       });
//       setState(() {
//         items.clear();
//         items.addAll(dummyListData);
//       });
//       return;
//     } else {
//       setState(() {
//         items.clear();
//         items.addAll(duplicateItems);
//       });
//     }

//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text(widget.title),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 onChanged: (value) {
//                   filterSearchResults(value);
//                 },
//                 controller: editingController,
//                 decoration: InputDecoration(
//                     labelText: "Search",
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   // return ListTile(
//                   //   title: Text('${items[index]}'),
//                   // );
//                   return Container(
//             margin: EdgeInsets.all(10),
//             height: 370,
//             child: Card(
//               elevation: 5,
//               child: Column(
//                 children: <Widget>[
//                   Container(
                  
//                     height: 200,
//                     width: double.infinity,
//                     child: Image.asset('images/villa.jpg',
//                     fit:BoxFit.cover),
//                   ),
//                   Column(
                    
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
//                         alignment: Alignment.topLeft,
//                         child :Text('Duplex',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, )),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
//                         alignment: Alignment.topLeft,
//                         child :Text('5 pièces',style: TextStyle(color: Colors.grey)),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
//                         alignment: Alignment.topLeft,
//                         child: Text('Un etage avec garage et piscine ...', style: TextStyle(color: Colors.grey),),
//                       ),
                      
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10),

//                             child:Icon(Icons.favorite_border),

//                           ),
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10),

//                             child:Icon(Icons.visibility, color: Colors.red,),

//                           ),
//                           Container(
//                             //padding: EdgeInsets.symmetric(horizontal: 2),

//                             child:Text('2,2k'),

//                           )
                          
                          
//                         ],
//                       ),
                      
//                     ],
//                   ),
                  
//                   Container(
                     
//                     alignment: Alignment.bottomRight,
//                     margin: EdgeInsets.only(bottom:15, right: 15),
//                     child: RaisedButton(
//                     child: Text('Detail', style: TextStyle(color: Colors.white),),
//                     onPressed: (){
//                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));
//                     },
                    
//                     color: Colors.redAccent,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),

//                   ),
                  
//                 ],
//               ),
//             ),
//           );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }