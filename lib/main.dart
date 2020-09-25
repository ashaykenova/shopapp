import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/screens/home.dart';
import 'package:shopapp/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/splash.dart';
import 'package:shopapp/provider/user_provider.dart';

import 'widgets/common.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (_) => UserProvider.initialize(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: deepOrange),
      home: ScreensController(),
    ),
  ));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    switch (user.status) {
      case Status.Uninitialized:
        return Splash();

      case Status.Unauthenticated:
      case Status.Authenticating:
        return Login();

      case Status.Authenticated:
        return HomePage();
      default: return Login();
    }
  }
}
