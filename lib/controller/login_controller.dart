import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/model/login_model.dart';
import 'package:test_app/view/note_screen/note_screen.dart';

class LoginController {
  Future<void> login(LoginModel loginModel) async {
    try {
      final response = await http.post(
        Uri.parse("http://192.168.18.94:8080/Auth/login"),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: json.encode(loginModel.toJson()),
      );


      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        bool credentialsMatch = false;
        for (var user in responseData) {
          if (user['username'] == loginModel.username &&
              user['password'] == loginModel.password) {
            credentialsMatch = true;
            break;
          }
        }

        if (credentialsMatch) {
          Get.to(() => const DecorationScreen());
        } else {
          Get.snackbar('Error', 'Invalid username or password.');
        }
      } else {
        Get.snackbar('Error',
            'Failed to login with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      Get.snackbar('Error', 'An error occurred: ${e.toString()}');
    }
  }
}
