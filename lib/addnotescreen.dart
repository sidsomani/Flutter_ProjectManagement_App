import 'package:flutter/material.dart';
import 'note.dart';
import 'homescreen.dart';
import 'notesop.dart';
//import 'package:provider/provider.dart';


class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String titleText;
    String descriptionText;

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

      body: Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 80,),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A3A3A),
                  ),
                ),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                onChanged: (value) {
                  titleText = value;
                },
              ),

              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Description',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF3A3A3A),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    descriptionText = value;
                  },
                ),
              ),

              TextButton(
                //onPressed: () {
                //  Provider.of<NotesOperation>(context, listen: false).addNewNote(titleText, descriptionText);
                //},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  backgroundColor: Color(0xFF5F52EE),
                ),
                onPressed: () {  },
                child: Text('Add Note',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              )
            ],
          ),

      ),

    );
  }
}
