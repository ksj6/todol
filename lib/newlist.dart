import "package:flutter/material.dart";

class Newlist extends StatefulWidget {
  static const String id = 'Newlist';
  const Newlist({Key? key}) : super(key: key);

  @override
  State<Newlist> createState() => _NewlistState();
}

class _NewlistState extends State<Newlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add new items'),
      ),
      body: Column(children: <Widget>[
        Container(
          child: Text("pls add the text"),
        ),
        TextField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'enter your to do list items',
          ),
        ),
        ElevatedButton(
          onPressed: (() {
            print("the note list is added");
          }),
          child: Container(
            height: 30,
            width: 60,
            child: Text(
              "add note",
              style:
                  TextStyle(backgroundColor: Colors.blue, color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
