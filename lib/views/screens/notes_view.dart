import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/notes_view_body.dart';
import 'package:notes_app/views/widget/show_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)
              ),
              context: context,
              builder: (context) {
                return const CustomBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
