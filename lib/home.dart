import "package:flutter/material.dart";
import 'package:todol/newlist.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('OUR TO-DO LIST'), backgroundColor: Colors.green),
      body: Column(
        children: [
          SizedBox(
            height: 34,
          ),
          Container(
            height: 150,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              shadowColor: Colors.black,

              elevation: 15,
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 10),
                      child: Text(
                        'this is the title of the card',
                        style: TextStyle(
                            backgroundColor: Colors.white, fontSize: 30),
                      ),
                    ),

                    subtitle: Text(
                      'hello all , we are going through the card basics here \n and learn the styling of cards',
                      style: TextStyle(color: Colors.black),
                    ),
                    //leading: Icon(Icons.add_circle, size: 60),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 150,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 15,
              //margin: EdgeInsets.only(bottom: 40),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 10),
                      child: Text(
                        'this is the title of the card',
                        style: TextStyle(
                            backgroundColor: Colors.white, fontSize: 30),
                      ),
                    ),

                    subtitle: Text(
                      'hello all , we are going through the card basics here \n and learn the styling of cards',
                      style: TextStyle(color: Colors.black),
                    ),
                    //leading: Icon(Icons.add_circle, size: 60),
                  ),
                ],
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,

            // buttonHeight: 100,
            children: <Widget>[
              // SizedBox(
              //   //height: 100,
              //   //width: 100,
              // );
              FloatingActionButton(
                heroTag: 'btn1',
                //focusColor: Colors.blue,
                //splashColor: Colors.white,

                elevation: 15,
                backgroundColor: Colors.black,
                onPressed: (() {
                  print("the button is pressed ");
                }),
                child: Text(
                  'Save note',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              FloatingActionButton(
                heroTag: 'btn2',
                onPressed: (() {
                  print('delete the list');
                }),
                child: Text('delete'),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.pushNamed(context, Newlist.id);
        }),
        child: Icon(Icons.add),
      ),
    );
  }
}
