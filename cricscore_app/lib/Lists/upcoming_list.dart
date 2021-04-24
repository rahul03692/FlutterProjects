import 'package:flutter/material.dart';
import 'package:cricscore_app/Lists/ListClass.dart';
import 'upcoming_styling.dart';

List uplist = [];

class UpcomingMatchesList extends StatefulWidget {
  @override
  _UpcomingMatchesListState createState() => _UpcomingMatchesListState();
}

class _UpcomingMatchesListState extends State<UpcomingMatchesList> {

  Future func() async {
    ListClass ls = ListClass();
    await ls.upcomingData();
    uplist = ls.upcomingList();
    print(uplist);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, projectSnap) {
        if (projectSnap.connectionState == ConnectionState.none &&
            projectSnap.hasData == null) {
          print('error');
          //print('project snapshot data is: ${projectSnap.data}');
          return Container();
        }
        return ListView.builder(
          itemCount: uplist.length,
          itemBuilder: (context, index) {
            String st = uplist[index]['name'];
            String date = uplist[index]['date'];
            return UpStyling(
              title: st,
              date: date,
            );
          },
        );
      },
      future: func(),
    );
  }
}
