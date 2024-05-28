import 'package:flutter/material.dart';
import 'package:flutter_application_1/telainicial.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData (primaryColor: Color.fromARGB(255, 179, 122, 146)),
      home: TelaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}