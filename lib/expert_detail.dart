import 'package:finale/cart.dart';
import 'package:flutter/material.dart';
import './cart_expert_push.dart';

class DetailExpert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 200.0,
            backgroundColor: Colors.redAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "OCTAVE N'DRY",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Arial',
                ),
              ),
              background:
                  Image.asset("images/ingenieur_bat.jpg", fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '  Profession  : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Ingenieur en batiment',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '  Depuis  : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2011',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '  Experience  : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Travaillé avec le BNETD',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '  Réalisation  : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'construction d\'Azalai Hotel',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ),

                  // Container(
                  //   child:Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children:<Widget>[
                  //       TextField(
                  //         decoration: InputDecoration(
                  //           labelText: 'Date de debut',
                  //           icon: Icon(Icons.work),
                  //         ),
                  //       ),
                  //        TextField(
                  //         decoration: InputDecoration(
                  //           labelText: 'Date de fin',
                  //           icon: Icon(Icons.work),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    child: Container(
                      height: 59,
                      child: RaisedButton(
                        child: Text(
                          "J'ai Besoin de vos services",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartExpertPush()));
                        },
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 250,
                    ),
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('Voir aussi:'),
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            child: Card(
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  child: Container(
                                    height: 80,
                                    child: Image.asset(
                                      'images/topographe.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailExpert()));
                                  }),
                            ],
                          ),
                        )),
                        Container(
                            child: Card(
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  child: Container(
                                    height: 80,
                                    child: Image.asset(
                                      'images/architecte.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailExpert()));
                                  }),
                            ],
                          ),
                        )),
                        Container(
                            child: Card(
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                  child: Container(
                                    height: 80,
                                    child: Image.asset(
                                      'images/viabilitation.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailExpert()));
                                  }),
                            ],
                          ),
                        ))
                      ]),

                  // Container(
                  //   child: ListView(
                  //     children: <Widget>[
                  //       Container(
                  //         child: Card(
                  //           child: Column(
                  //             children: <Widget>[
                  //               GestureDetector(
                  //                 child: Container(
                  //                   height: 170,
                  //                   child: Image.asset(
                  //                     'images/topographe.jpeg',
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //                 onTap: () {
                  //                   Navigator.push(
                  //                       context,
                  //                       MaterialPageRoute(
                  //                           builder: (context) =>
                  //                               DetailExpert()));
                  //                 },
                  //               ),
                  //               Container(
                  //                 margin: EdgeInsets.only(top: 5, bottom: 8),
                  //                 alignment: Alignment.topLeft,
                  //                 child: Text('Octave N\'dry'),
                  //               ),
                  //               Container(
                  //                 margin: EdgeInsets.only(bottom: 8),
                  //                 alignment: Alignment.topLeft,
                  //                 child: Text('Ingenieur'),
                  //               ),
                  //               Container(
                  //                 margin: EdgeInsets.only(bottom: 8),
                  //                 alignment: Alignment.topLeft,
                  //                 child: Text(
                  //                   'Topographe',
                  //                   style: TextStyle(color: Colors.grey),
                  //                 ),
                  //               ),
                  //               Row(
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceBetween,
                  //                 children: <Widget>[
                  //                   Text('45000f'),
                  //                   FlatButton(
                  //                     child: Text(
                  //                       'Interessé',
                  //                       style: TextStyle(color: Colors.blue),
                  //                     ),
                  //                     onPressed: () {
                  //                       Navigator.push(
                  //                           context,
                  //                           MaterialPageRoute(
                  //                               builder: (context) =>
                  //                                   DetailExpert()));
                  //                     },
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
