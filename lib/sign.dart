import 'package:finale/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class Sign extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: Colors.orange, //or set color with: Color(0xFF0000FF)
));
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor:Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: SingleChildScrollView(child: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 100,
              height: 100,
              child: Image.asset('images/logo.png',
            fit: BoxFit.cover,),

            ),
           
           
            
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                decoration: new InputDecoration(
                  labelText: 'Nom',
                  icon: Icon(Icons.account_circle)
                ),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: 'Prenom',
                  icon: Icon(Icons.account_circle),
                  ),
              ),
            ),
              Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                  ),
                
              ),
            ),
              Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: 'Numéro de téléphone',
                  icon: Icon(Icons.phone_android),
                  ),
              ),
            ),
              Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: 'Mot de passe',
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
              Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Confirmer le mot de passe',
                icon: Icon(Icons.lock_outline),
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Nav()
                        ));
                      },
                                          child: new Container(
                                            
                            alignment: Alignment.center,
                            height: 60.0,
                            width: 10,
                            decoration: new BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("S'inscrire",
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
            
              ],
            ),
          
          ],
        ),
      ),
    ),
    );
  }
}