import 'package:flutter/material.dart';
import 'package:flutter_api/model/RegisterResponse.dart';
import 'package:flutter_api/model/RegisterScreen.dart';

abstract class _RegisterScreenState extends State<RegisterScreen> {
  RegisterResponse? registerResponse = null;
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
}
