import 'package:flutter/material.dart';
import 'package:cricscore_app/screens/ongoing.dart';
import 'package:cricscore_app/screens/upcoming_matches.dart';
import 'package:cricscore_app/screens/player_details.dart';

const bcolor = Color(0xff002280);

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10.0),
          color: Color(0xff463E5C),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage(
                      'images/icon_cric.png',
                    ),
                    height: 50.0,
                    width: 50.0,
                    color: Colors.orangeAccent,
                  ),
                  Container(
                    child: Text(
                      'CricScore',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/ground_image.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Buttons(
                                  text: 'Player Details',
                                  onpress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PlayerDetails()));
                                  },
                                ),
                                Buttons(
                                  text: 'Upcoming Matches',
                                  onpress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UpcomingMatches()));
                                  },
                                ),
                                Buttons(
                                  text: 'Ongoing Matches',
                                  onpress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Ongoing()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                            ),
                            color: Color(0xff363636),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: AssetImage('images/phone.png'),
                                    height: 50.0,
                                    width: 50.0,
                                  ),
                                  Image(
                                    image: AssetImage('images/email.png'),
                                    height: 50.0,
                                    width: 50.0,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5.0,
                                ),
                                child: Container(
                                  child: Text(
                                    'Made with ❤ by Rahul Thakur',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({this.text, this.onpress});
  final String text;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FlatButton(
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: bcolor,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        onPressed: onpress,
      ),
    );
  }
}

//MatchesList()
