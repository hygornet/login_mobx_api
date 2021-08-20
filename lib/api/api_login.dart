import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginApi {
  static Future logar(String login, String senha) async {
    try {
      Map<String, String> headers = {
        "Content-Type": "application/json",
      };

      var url =
          Uri.parse("https://carros-springboot.herokuapp.com/api/v2/login");

      Map params = {
        "username": login,
        "password": senha,
      };

      String s = jsonEncode(params);

      var response = await http.post(url, headers: headers, body: s);

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
