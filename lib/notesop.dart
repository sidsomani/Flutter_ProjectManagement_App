import 'package:flutter/cupertino.dart';
import 'note.dart';
import 'package:flutter/material.dart';
import ;

class NotesOp with ChangeNotifier {
  //List of note
  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOp() {
    addNewNote('First Note', 'First Note Description');
  }

  void addNewNote(String title, String description) {
    //Note object
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}