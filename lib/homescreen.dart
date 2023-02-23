import 'package:flutter/material.dart';
import 'note.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEFF5),

      appBar: AppBar(
        backgroundColor: Color(0xFFEEEFF5),
        title: Text('Notes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),

      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 30, right: 30),
              child: ElevatedButton(
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 40,),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF5F52EE),
                  minimumSize: Size(60, 60),
                  elevation: 10,
                ),
              ),
            ),
          ),


        ],


      ),

    );
  }
}

class NotesCard extends StatelessWidget {
  final Note note;

  NotesCard(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            note.description,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}