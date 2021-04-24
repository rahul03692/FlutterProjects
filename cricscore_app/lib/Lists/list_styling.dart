import 'package:flutter/material.dart';

class ListTiles extends StatefulWidget {

  ListTiles({this.match});
  final String match;

  @override
  _ListTilesState createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Color(0xff2C2C34),
          ),
          padding: EdgeInsets.all(10.0),
          child: Text(
            widget.match,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onPressed: (){
        print("hello");
      },
    );
  }
}

