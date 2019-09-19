import 'package:finale/expert_detail.dart';
import 'package:flutter/material.dart';
 import './drawer_bar.dart';
// import './expert_item.dart';

class Expertscreen extends StatefulWidget {
    @override
  State<StatefulWidget> createState(){
    return ExpertscreenState();
  }
}
  
  class ExpertscreenState extends State<Expertscreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Probat'),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
           icon: Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: Menu(context),
      body: GridView(
        children: <Widget>[
            Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child:  Container(
                    height: 170,
                    child: Image.asset(
                      'images/topographe.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                    onTap: (){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailExpert()));
                   
                    },
                  ),
                 
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Octave N\'dry'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Ingenieur'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Topographe', style: TextStyle(color: Colors.grey),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('45000f'),
                      FlatButton(
                      child: Text(
                        'Interessé',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailExpert()));
                     
                     },
                      
                    ),

                    ],
                   
                      
                      
                  ),
                ],
              ),
            ),
          ),
            Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 170,
                    child: Image.asset(
                      'images/ingenieur_bat.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Octave N\'dry'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Ingenieur'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Topographe', style: TextStyle(color: Colors.grey),),
                  ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('45000f'),
                      FlatButton(
                      child: Text(
                        'Interessé',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailExpert()));
                     
                        },
                      
                    ),

                    ],
                   
                      
                      
                  ),
                ],
              ),
            ),
          ),
            Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 170,
                    child: Image.asset(
                      'images/viabilitation.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Octave N\'dry'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Ingenieur'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Topographe', style: TextStyle(color: Colors.grey),),
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('45000f'),
                      FlatButton(
                      child: Text(
                        'Interessé',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailExpert()));
                     
                       },
                      
                    ),

                    ],
                   
                      
                      
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 170,
                    child: Image.asset(
                      'images/architecte.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Octave N\'dry'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Ingenieur'),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.topLeft,
                    child: Text('Topographe', style: TextStyle(color: Colors.grey),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('45000f'),
                      FlatButton(
                      child: Text(
                        'Interessé',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailExpert()));
                      },
                      
                    ),

                    ],
                   
                      
                      
                  ),
                ],
              ),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 1 / 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
