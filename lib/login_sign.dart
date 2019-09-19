import 'package:finale/houses.dart';
import 'package:finale/sign.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './nav_bar.dart';

class Home extends StatefulWidget {
  Home() : super();

  final String title = "ProBat";

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://image.shutterstock.com/image-photo/view-engineer-worker-watching-blueprint-260nw-299623502.jpg',
    'https://cdn.pixabay.com/photo/2018/06/17/09/40/work-3480187__480.jpg',
    'https://cdn.pixabay.com/photo/2017/03/03/17/09/key-2114455__480.jpg',
    'https://image.shutterstock.com/image-illustration/3d-rendering-luxurious-villa-contrasting-260nw-503261785.jpg',
    'https://cdn.pixabay.com/photo/2015/09/29/22/49/blueprint-964630_1280.jpg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 200.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 15),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.grey,
                  ),
                );
              }),
            ),

           Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                  child: new Text(
                    "ProBat",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
              new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
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
                            decoration: new BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Connexion",
                                style: new TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Sign()));
                          },
                           child: Text("S\'inscrire ",style: new TextStyle(
                                fontSize: 17.0, color: Colors.blueGrey,fontWeight: FontWeight.bold))),
                  ),
                  ),
                ),
                
              ],
              
            ),
              
            
          ]
        ), 
           ),
            
          
          ],
        ),
      ),

      ) 
      
    );
  }
}
