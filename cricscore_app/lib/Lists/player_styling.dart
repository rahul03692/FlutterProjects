import 'package:flutter/material.dart';
import 'package:cricscore_app/Lists/searched_player_data.dart';
import 'ListClass.dart';

class PlayerStyling extends StatefulWidget {

  PlayerStyling({this.fname,this.name,this.pid});
  final String fname,name;
  final int pid;

  @override
  _PlayerStylingState createState() => _PlayerStylingState();
}

class _PlayerStylingState extends State<PlayerStyling> {
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
            'Name: ${widget.name} \nFullName: ${widget.fname}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onPressed: () async{
        ListClass ls=ListClass();
        await ls.searchedData(widget.pid);
        Map<String,dynamic> pl=ls.searchedList();
        Navigator.push(context, MaterialPageRoute(builder: (context) => Stats(pl: pl,)));

      },
    );
  }
}
