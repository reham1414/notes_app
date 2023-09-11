import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.onPressedFunc});
final IconData icon;
final void Function()? onPressedFunc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.04),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Center(
        child: IconButton(
          onPressed: onPressedFunc,
          icon: Icon(icon,
          size: 32,
          ),
        ),
      ),
    );
  }
}
