import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_serializion/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Json Serialization',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UserModel userObject =
      UserModel(id: "0001", fullname: "Sadid", email: "sadid@gmail.com");
  String userJson =
      '{"id":"0001","fullname":"Sadid","email":"sadid@gmail.com"}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Serialization
                Map<String, dynamic> userMap = userObject.toMap();
                var json = jsonEncode(userMap);
                print(json);
              },
              child: Text("Serialize"),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //De-Serialization
                var decode = jsonDecode(userJson);
                Map<String, dynamic> userMap = decode;
                UserModel newUser = UserModel.fromMap(userMap);
                print(newUser.id);
              },
              child: Text("De-Serialize"),
            ),
          ],
        ),
      )),
    );
  }
}
