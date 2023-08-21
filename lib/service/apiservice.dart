import 'dart:convert';

import '../constant/constant.dart';
import '../model/models.dart';
import 'package:http/http.dart' as http;


Future<dynamic> futureAlbum() async {
  print('fhfd');
  var responce = await http.get(Uri.parse('$baseUrl/users'));
  if (responce.statusCode == 200) {
    var userBody = jsonDecode(responce.body);
    var userList = userBody.map((e) => User.fromJson(e)).toList();
    print(userList);
    return userList;
  } else {
    throw 'Error';
  }
}

Future postdata({User ? user}) async {



  var res = await http.post(
    Uri.parse('$baseUrl/users'),
    body: jsonEncode(user!.toJson()),
  );

}
Future updatedata({User ? user}) async {



  var res = await http.put(
    Uri.parse('$baseUrl/posts'),
    body: jsonEncode(user!.toJson()),
  );

}
Future deletedata({User ? user}) async {



  var res = await http.delete(
    Uri.parse('$baseUrl/users'),
    body: jsonEncode(user!.toJson()),
  );

}

