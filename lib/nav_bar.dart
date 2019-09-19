import 'package:flutter/material.dart';
import './houses.dart';
import './expert.dart';
import './cart.dart';
import './detail_maison.dart';
import './favorite_houses.dart';

class Nav extends StatefulWidget {
  //static get routeName => null;
  // static const routeName ='/detail_maison';
  // get routeName => null;

  @override
  State<StatefulWidget> createState(){
    return NavState();
  }
}
  
  class NavState extends State<Nav>{
    int _pageindex = 0;
    void onItemTapped(int index){
      setState(() {
       _pageindex = index; 
      });
    }
    final _pageContent = [
      Houses(),
      Expertscreen(),
      CartExpert(),
      
    ];
 
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
           bottomNavigationBar: BottomNavigationBar(
           //backgroundColor: Colors.redAccent,
           items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(icon: Icon(Icons.home,),title: Text('Nos maisons') ),
             BottomNavigationBarItem(icon: Icon(Icons.people_outline,), title: Text('Nos experts') ),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,), title: Text('Mon panier') ),
           
           ],
           currentIndex: _pageindex,
           type: BottomNavigationBarType.fixed,
           onTap: onItemTapped,
             ),
      
      body:_pageContent.elementAt(_pageindex),
      
    );
  }

}
