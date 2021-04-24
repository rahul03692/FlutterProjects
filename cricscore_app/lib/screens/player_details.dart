import 'package:flutter/material.dart';
import 'package:cricscore_app/Lists/search_player.dart';

String pname;
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class PlayerDetails extends StatefulWidget {
  @override
  _PlayerDetailsState createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Details'),
        centerTitle: true,
        backgroundColor: Color(0xff171721),
      ),
      body: Column(
        children: [

          SizedBox(height:10.0),
          TextField(
            onChanged: (value) {
              pname = value;
            },
            decoration: kTextFieldDecoration,
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPlayer(pname: pname,)));
                });
              },
              child: Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
