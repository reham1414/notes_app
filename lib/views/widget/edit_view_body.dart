import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
 import 'package:notes_app/views/widget/custom_text_field.dart';
import 'package:notes_app/views/widget/edit_colors_list.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    children: [
    const SizedBox(
    height: 50,
    ),
    CustomAppBar(
      title: 'Edit Note',
      icon: Icons.check,
      onPressedFunc: () {

        widget.note.title = title ?? widget.note.title;
        widget.note.subTitle = subTitle ?? widget.note.subTitle;
        widget.note.save();
        BlocProvider.of<NotesCubit>(context).fetchData();
          Navigator.pop(context);
    },
    ),
    const SizedBox(
    height: 50,),
       CustomTextField(
        hintText: widget.note.title,
        onChanged: (value){
          title =value;
        },
      ),
      const SizedBox(height: 20,),
       CustomTextField(
         hintText: widget.note.subTitle,
         maxLines: 5,
         onChanged: (value){
           subTitle = value;
         },
       ),
     EditColorsList(note: widget.note,)
    ]));
  }
}
