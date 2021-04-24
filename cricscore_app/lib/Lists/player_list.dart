import 'package:flutter/material.dart';
import 'ListClass.dart';
import 'player_styling.dart';

List plist=[];

class PlayerDetailsList extends StatefulWidget {

  PlayerDetailsList({this.pname});
  final String pname;

  @override
  _PlayerDetailsListState createState() => _PlayerDetailsListState();
}

class _PlayerDetailsListState extends State<PlayerDetailsList> {
  Future func() async {
    ListClass ls = ListClass();
    await ls.playerDetails(widget.pname);
    plist = ls.playerData();
    print(plist);
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
          itemCount: plist.length,
          itemBuilder: (context, index) {
            String fname = plist[index]['fullName'];
            String name = plist[index]['name'];
            int pid=plist[index]['pid'];
            return PlayerStyling(
              fname: fname,
              name: name,
              pid:pid,
            );
          },
        );
      },
      future: func(),
    );
  }
}
