import 'package:flutter/material.dart';

class UpStyling extends StatefulWidget {

  UpStyling({this.title,this.date});
  final String title,date;
  @override
  _UpStylingState createState() => _UpStylingState();
}

class _UpStylingState extends State<UpStyling> {
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
            '${widget.title} on ${widget.date}',
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
