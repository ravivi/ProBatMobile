import 'package:finale/detail_maison.dart';
import 'package:finale/favorite_houses.dart';
import 'package:finale/login_sign.dart';
import 'package:flutter/material.dart';
import'./drawer_bar.dart';

class Houses extends StatefulWidget {
  //static get routeName => null;
  // static const routeName ='/detail_maison';
  // get routeName => null;

  @override
  State<StatefulWidget> createState(){
    return HousesState();
  }
}
  
  class HousesState extends State<Houses>{
 
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ProBat'),
        actions: <Widget>[
          Icon(Icons.search),
          
        ],
         
      ),
    
drawer: Menu(context),
      body:
       ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 370,
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                  
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('images/villa.jpg',
                    fit:BoxFit.cover),
                  ),
                  Column(
                    
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child :Text('Duplex',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, )),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child :Text('5 pièces',style: TextStyle(color: Colors.grey)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child: Text('Un etage avec garage et piscine ...', style: TextStyle(color: Colors.grey),),
                      ),
                      
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),

                            child:Icon(Icons.favorite_border),

                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),

                            child:Icon(Icons.visibility, color: Colors.red,),

                          ),
                          Container(
                            //padding: EdgeInsets.symmetric(horizontal: 2),

                            child:Text('2,2k'),

                          )
                          
                          
                        ],
                      ),
                      
                    ],
                  ),
                  
                  Container(
                     
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom:15, right: 15),
                    child: RaisedButton(
                    child: Text('Detail', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));
                    },
                    
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ),
                  
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 370,
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('images/villa.jpg',
                    fit:BoxFit.cover),
                  ),
                  Column(
                    
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child :Text('Duplex',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, )),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child :Text('5 pièces',style: TextStyle(color: Colors.grey)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child: Text('Un etage avec garage et piscine ...', style: TextStyle(color: Colors.grey),),
                      ),
                      
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),

                            child:Icon(Icons.favorite_border),

                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),

                            child:Icon(Icons.visibility, color: Colors.red,),

                          ),
                          Container(
                            //padding: EdgeInsets.symmetric(horizontal: 2),

                            child:Text('2,2k'),

                          )
                          
                          
                        ],
                      ),
                      
                    ],
                  ),
                  
                  Container(
                     
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom:15, right: 15),
                    child: RaisedButton(
                    child: Text('Detail', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      //Navigator.pushNamed(context, routeName);
                    },
                    
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ),
                  
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 370,
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Image.asset('images/belle.jpg',
                    fit:BoxFit.cover),
                  ),
                  Column(
                    
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child :Text('Duplex',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, )),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child :Text('5 pièces',style: TextStyle(color: Colors.grey)),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric( vertical:2, horizontal: 10),
                        alignment: Alignment.topLeft,
                        child: Text('Un etage avec garage et piscine ...', style: TextStyle(color: Colors.grey),),
                      ),
                      
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),

                            child:Icon(Icons.favorite_border),

                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),

                            child:Icon(Icons.visibility, color: Colors.red,),

                          ),
                          Container(
                            //padding: EdgeInsets.symmetric(horizontal: 2),

                            child:Text('2,2k'),

                          )
                          
                          
                        ],
                      ),
                      
                    ],
                  ),
                  
                  Container(
                     
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom:15, right: 15),
                    child: RaisedButton(
                    child: Text('Detail', style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      //Navigator.pushNamed(context, routeName);
                    },
                    
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ),
                  
                ],
              ),
            ),
          ),
          
                   
          
        ],
      ),
       
    );

       
        
  
    
  }

}
