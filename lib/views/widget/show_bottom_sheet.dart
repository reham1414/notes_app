import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hintText: 'Title',),
            SizedBox(height: 20,),
            CustomTextField(hintText: 'Content',maxLines: 4,),
          ],
        ),
    );
  }
}
