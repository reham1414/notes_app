import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
import 'package:notes_app/views/widget/notes_listview_builder.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 65,
          ),
          CustomAppBar(title: 'Notes', icon: Icons.search, onPressedFunc: () {
          },),
          const SizedBox(
            height: 40,
          ),
          const Expanded(child: NotesListViewBuilder())
        ],
      ),
    );
  }
}
