import 'package:flutter/material.dart';
import 'package:cricscore_app/Lists/MatchesList.dart';

class Ongoing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ongoing Matches'),
        centerTitle: true,
        backgroundColor: Color(0xff171721),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Color(0xff171721),
        child:MatchesList(),
      ),
    );
  }
}
