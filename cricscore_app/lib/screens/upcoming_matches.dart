import 'package:flutter/material.dart';
import 'package:cricscore_app/Lists/upcoming_list.dart';

class UpcomingMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Matches'),
        centerTitle: true,
        backgroundColor: Color(0xff171721),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Color(0xff171721),
        child:UpcomingMatchesList(),
      ),
    );
  }
}
