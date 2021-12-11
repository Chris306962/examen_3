import 'package:flutter/material.dart';
import 'package:proyecto4/src/models/pages/login/login_page.dart';
import 'package:proyecto4/src/models/pages/register/register_page.dart';
import 'package:proyecto4/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'App para entregar',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes:{
        'login': (BuildContext context)=> loginPage(),
        'register': (BuildContext context)=> RegisterPage(),

    },
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: MyColors.primaryColors)
        ),
    );
  }
}


