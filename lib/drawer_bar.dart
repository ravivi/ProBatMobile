import 'package:flutter/material.dart';
import './favorite_houses.dart';
import './detail_maison.dart';
import './profil.dart';

Widget Menu( context){
  return Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
          
                    Container(
                      color: Colors.white,
                       child:
UserAccountsDrawerHeader(
                accountName: Text('Octave N\'dry'),
                accountEmail: Text('jeremiedry@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));

                  },
                  child:Container(  
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        AssetImage('images/topographe.jpeg'))),
              ),),
             ) , 
                ),
              
              
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Tous les experts'),
                onTap: () {
                  // This line code will close drawer programatically....
Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('Mes maisons favoris'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
                },
              ),
              Divider(
                height: 10.0,
              ),
               ListTile(
                leading: Icon(Icons.notification_important),
                title: Text('Notification'),
                onTap: () {
                  showAlertDialog(context);
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
                },
              ),
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: Icon(Icons.cancel),
                title: Text('Deconnexion'),
                onTap: () {
                  //Navigator.pop(context);
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail()));
                },
              )
            ],
          ));
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget remindButton = FlatButton(
    child: Text("Me Rappeler après"),
    onPressed:  () {},
  );
  Widget cancelButton = FlatButton(
    child: Text("Ok"),
    onPressed:  () {
      Navigator.of(context).pop(); // dismiss dialog
   
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Notification"),
    content: Text("Une nouvelle maison vient d'être ajoutée"),
    actions: [
      remindButton,
      cancelButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}














  