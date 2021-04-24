import 'package:flutter/material.dart';

class Stats extends StatefulWidget {

  Stats({this.pl});
  final Map<String,dynamic> pl;

  @override
  _StatsState createState() => _StatsState();
}

String x;

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            color: Color(0xff171721),
            child: Expanded(
              child: ListView(
                children: [
                  Text(widget.pl['name'],textAlign:TextAlign.center,style:TextStyle(fontSize: 40.0,fontWeight: FontWeight.w700,color: Colors.white)),
                  Image(
                    image: NetworkImage(widget.pl['imageURL']!=null?widget.pl['imageURL']:"https://www.pngfind.com/pngs/m/341-3416003_no-avatar-pic-unknown-person-png-transparent-png.png"),
                    height: 200.0,
                    width: 200.0,
                  ),
                  TextClass(text: 'Country',desc: widget.pl['country'],sz: 25.0,),
                  TextClass(text: 'Born',desc: widget.pl['born'],sz: 25.0,),
                  TextClass(text: 'BattingStyle',desc: widget.pl['battingStyle'],sz: 25.0,),
                  TextClass(text: 'BowlingStyle',desc: widget.pl['bowlingStyle'],sz: 25.0,),
                  TextClass(text: 'Role',desc: widget.pl['playingRole'],sz: 25.0,),
                  TextClass(text: 'ODI 100s',desc: widget.pl['data']['batting']['ODIs']['100'],sz: 25.0,),
                  TextClass(text: 'ODI 50s',desc: widget.pl['data']['batting']['ODIs']['50'],sz: 25.0,),
                  TextClass(text: 'T20 100s',desc: widget.pl['data']['batting']['T20Is']['100'],sz: 25.0,),
                  TextClass(text: 'T20 50s',desc: widget.pl['data']['batting']['T20Is']['50'],sz: 25.0,),
                  TextClass(text: 'Test 100s',desc: widget.pl['data']['batting']['tests']['100'],sz: 25.0,),
                  TextClass(text: 'Test 50s',desc: widget.pl['data']['batting']['tests']['50'],sz: 25.0,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextClass extends StatelessWidget {

  TextClass({this.text,this.desc,this.sz});
  final String text,desc;
  final double sz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text('$text : $desc',
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: sz,
        color:Colors.white,
      ),),
    );
  }
}
