import 'package:flutter/material.dart';

import'./drawer_bar.dart';

class CartExpert extends StatefulWidget{
  State<StatefulWidget> createState(){
    return CartExpertState();
  }
}
  class CartExpertState extends State<CartExpert>{
   @override
  Widget build(BuildContext context){
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon panier'),
      ),
      drawer: Menu(context),
      body: ListView(
        children: <Widget>[
          Card(elevation: 5,
          child:  Dismissible(
            key: ValueKey(1),
            background: Container(color: Theme.of(context).errorColor,
            child: Icon(Icons.delete, size: 40,),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20),),
            
          child: ListTile(
            leading: Image.asset('images/topographe.jpeg',
            fit: BoxFit.cover ),
            title: Text("Octave N'dry"),
            subtitle: Text('Ingenieur Topographe'),
            trailing: Icon(Icons.delete, color: Colors.redAccent,),
          ) ,
          ),
          ),
           Card(elevation: 5,
          child:  Dismissible(
            key: ValueKey(2),
            background: Container(color: Theme.of(context).errorColor,
            child: Icon(Icons.delete, size: 40,),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20),),
            
          child: ListTile(
            leading: Image.asset('images/architecte.jpg',
            fit: BoxFit.cover ),
            title: Text('Gbané Yaya'),
            subtitle: Text('Architecte'),
            trailing: Icon(Icons.delete, color: Colors.redAccent,),
          ) ,
          ),
          ),
          Container( padding: EdgeInsets.all(100),
            child:
Container(
          
                height: 59,
                child: RaisedButton(
                    child:Text(
                    "Vider mon panier", style: TextStyle(color: Colors.white),
                    ),
  
                  
                  onPressed: () {
                    //Navigator.pushNamed(context, routeName);
                  },
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
          ),
          
         
        ],
      ),

    );
  }
  
}
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/cart.dart' show Cart;
// import '../widgets/cart_item.dart';

// class CartScreen extends StatelessWidget{
//   static const routeName ='/cart';
//   @override
//   Widget build(BuildContext context){
//     final cart = Provider.of<Cart>(context);
//         return Scaffold(
//           appBar: AppBar(
//             title: Text('Mon panier'),
//           ),
//           body: Column(
//             children: <Widget>[
//               Card(
//                 margin: EdgeInsets.all(15),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     'Total',
//                      style: TextStyle(fontSize: 20),
//                      ),
//                      Spacer(),

//                   Chip(
//                     label: Text('\$${cart.totalAmount}',
//                      style: TextStyle(
//                        color:Theme.of(context).primaryTextTheme.title.color
//                        ),
//                        ),
//                     backgroundColor: Theme.of(context).primaryColor,
//                   ),
//                   FlatButton(
//                     child: Text('ORDER NOW'),
//                     onPressed:(){},
//                     textColor:Theme.of(context).primaryColor,
//                     ),

//                 ],
//               ),

//             ),
//           ),//card
//           SizedBox(height:10),
//           Expanded(
//             child:ListView.builder(
//               itemCount: cart.items.length,
//               itemBuilder:(ctx,i)=> CartItem(
//                 cart.items.values.toList()[i].id,
//                 cart.items.values.toList()[i].price,
//                 cart.items.values.toList()[i].quantity,
//                 cart.items.values.toList()[i].title,
//             ),
//           ),
//           ),
//         ],
//       ),

//     );
//   }
  
// }
