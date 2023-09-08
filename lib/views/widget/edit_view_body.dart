import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
// import 'package:notes_app/views/widget/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    children: [
    SizedBox(
    height: 65,
    ),
    CustomAppBar(title: 'Edit Note', icon: Icons.check,),
    // SizedBox(
    // height: 40,),
    //   CustomTextField(hintText: 'Title',),
    //   SizedBox(height: 20,),
    //   CustomTextField(hintText: 'Content',maxLines: 5,),
    //   SizedBox(height: 120,),
    ]));
  }
}
