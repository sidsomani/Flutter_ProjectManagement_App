import 'package:flutter/material.dart';
import 'note.dart';
import 'homescreen.dart';
import 'addnotescreen.dart';
import 'notesop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddScreen(),
    );
  }
}

