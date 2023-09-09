import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPressedFunc});
 final String title;
 final IconData icon;
 final VoidCallback onPressedFunc;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
        style: const TextStyle(
          fontSize: 32,
        ),
        ),
        const Spacer(),
         CustomIcon(icon: icon, onPressedFunc: onPressedFunc,),
      ],
    );
  }
}
