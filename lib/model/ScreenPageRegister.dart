import 'package:flutter/material.dart';
import 'package:flutter_api/model/RegisterResponse.dart';
import 'RegisterScreen.dart';
import 'package:flutter_api/model/RegisterScreenState.dart';
import 'UserScreen.dart';
import 'UserScreenState.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Register Screen'),
    ),
    body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: jobController,
                decoration: InputDecoration(
                    hintText: 'Enter your job',
                    labelText: 'job',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    RegisterResponse.connectToAPI(
                            nameController.text, jobController.text)
                        .then((value) {
                      registerResponse = value;
                      SetState(() {});
                    });
                  },
                  child: Text('Submit'),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
