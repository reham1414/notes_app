import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
 import 'package:notes_app/views/widget/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    children: [
    const SizedBox(
    height: 50,
    ),
    CustomAppBar(title: 'Edit Note', icon: Icons.check, onPressedFunc: () {
      Navigator.pop(context);
    },),
    const SizedBox(
    height: 50,),
      const CustomTextField(hintText: 'Title',),
      const SizedBox(height: 20,),
      const CustomTextField(hintText: 'Content',maxLines: 5,),
    ]));
  }
}
