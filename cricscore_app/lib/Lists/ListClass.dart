import 'package:cricscore_app/api_data/http_api.dart';
// ignore: non_constant_identifier_names
String api_key="cKRP27KCi7f1hrRoMFQSBtEFezp1";
String url="https://cricapi.com/api/cricket/$api_key";
String url2="https://cricapi.com/api/matchCalendar/$api_key";
class ListClass{
  List mlist=[];
  List plist=[];
  List ulist=[];
  Map<String,dynamic> slist;

  Future findMatchesData() async{
    MatchesData md=MatchesData(url);
    var data=await md.getDataMatches();
    mlist=data['data'];
  }

  Future playerDetails(String name) async{
    String url1="https://cricapi.com/api/playerFinder?apikey=$api_key&name=$name";
    MatchesData md=MatchesData(url1);
    var data=await md.getDataMatches();
    plist=data['data'];
  }

  Future upcomingData() async{
    MatchesData md=MatchesData(url2);
    var data=await md.getDataMatches();
    ulist=data['data'];
  }

  Future searchedData(int pid) async{
    String url3="https://cricapi.com/api/playerStats?apikey=$api_key&pid=$pid";
    MatchesData md=MatchesData(url3);
    var data=await md.getDataMatches();
    slist=data;
  }

  // ignore: non_constant_identifier_names
  List MatchData(){
    return mlist;
  }
  // ignore: non_constant_identifier_names
  List playerData(){
    return plist;
  }

  List upcomingList (){
    return ulist;
  }

  Map<String,dynamic> searchedList(){
    return slist;
  }

}