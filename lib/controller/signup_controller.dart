import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/model/signup_model.dart';

class AuthController {
  Future<void> Register(AuthModel authmodel, BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse("http://192.168.18.94:8080/Auth/signup"),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: json.encode({
          'username': authmodel.username,
          'password': authmodel.password,
        }),
      );
      if (response.statusCode == 200) {
        Get.snackbar("Successful", "Registration Successful",
            snackPosition: SnackPosition.BOTTOM);
      } else {
        Get.snackbar("Error", "SignUp Failed: ${response.body}",
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar("Error", e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}
