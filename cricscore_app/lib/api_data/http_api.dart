import 'package:http/http.dart' as http;
import 'dart:convert';


class MatchesData {
  MatchesData(this.url);

  final String url;

  Future getDataMatches() async {
    Uri x=Uri.parse(url);
    http.Response response = await http.get(x);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }


}