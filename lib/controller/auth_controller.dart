import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/model/auth-model.dart';

class AuthController {
  Future<void> Register(AuthModel authmodel, BuildContext context) async {
    try {
      final response = await http.post(
        Uri.parse("http://192.168.18.94:8080/Auth/signup"),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({
          'username': authmodel.username,
          'password': authmodel.password,
        }),
      );
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("SignUp Successful"),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("SignUp Failed: ${response.body}"),
          ),
        );
      }
    } catch (e) {
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("$e"),
        ),
      );
    }
  }
}
