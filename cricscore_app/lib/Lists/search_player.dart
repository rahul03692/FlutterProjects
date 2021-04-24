import 'package:flutter/material.dart';
import 'package:cricscore_app/Lists/player_list.dart';

class SearchPlayer extends StatefulWidget {
  SearchPlayer({this.pname});
  final String pname;
  @override
  _SearchPlayerState createState() => _SearchPlayerState();
}

class _SearchPlayerState extends State<SearchPlayer> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: Color(0xff171721),
        child: PlayerDetailsList(
          pname: widget.pname,
        ),
      ),
    );
  }
}
