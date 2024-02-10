import 'package:flutter/material.dart';
import 'package:noteapp/models/Note_model.dart';
import 'package:noteapp/widgets/edit_note_view_body.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        note: note,
      ),
    );
  }
}
