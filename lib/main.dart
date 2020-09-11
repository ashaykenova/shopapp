import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:shopapp/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.red.shade900),
    home: Login(),
  ));
}


