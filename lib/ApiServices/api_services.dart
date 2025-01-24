import 'dart:convert';
import 'package:driver_part/model/login_model.dart';
import 'package:http/http.dart' as http;

class LoginApiServices {
  Future<LoginModel?> login(String email, String password) async {
    try {
      final url = Uri.parse("https://bishalpantha.com.np/api/v1/auth/login");
      final body = jsonEncode({"email": email, "password": password});
      final response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: body);
      if (response.statusCode == 200) {
        LoginModel model = LoginModel.fromJson(jsonDecode(response.body));
        return model;
      } else {
        LoginModel model = LoginModel.fromJson(jsonDecode(response.body));
        return model;
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}