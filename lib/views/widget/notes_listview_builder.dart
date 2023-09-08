import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_note_item.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context , index){
          return const NoteItem();
        }
    );
  }
}
