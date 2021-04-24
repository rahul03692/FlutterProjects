import 'package:flutter/material.dart';
import 'ListClass.dart';
import 'package:cricscore_app/Lists/list_styling.dart';

List matcheslist=[];

class MatchesList extends StatefulWidget {
  @override
  _MatchesListState createState() => _MatchesListState();
}

class _MatchesListState extends State<MatchesList> {


  Future func() async {
    ListClass ls = ListClass();
    await ls.findMatchesData();
    matcheslist =ls.MatchData();
  }

  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      builder: (context, projectSnap) {
        if (projectSnap.connectionState == ConnectionState.none &&
            projectSnap.hasData == null) {
          print('error');
          //print('project snapshot data is: ${projectSnap.data}');
          return Container();
        }
        return ListView.builder(
          itemCount: matcheslist.length != null ? matcheslist.length:0,
          itemBuilder: (context, index) {
            String st=matcheslist[index]['title'];
            return ListTiles(
              match: st,
            );
          },
        );
      },
      future: func(),
    );
  }
}
