import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widget/colors_listview.dart';

class EditColorsList extends StatefulWidget {
  const EditColorsList({super.key, required this.note});
final NoteModel note;
  @override
  State<EditColorsList> createState() => _EditColorsListState();
}

class _EditColorsListState extends State<EditColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context , index){
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index ;
                    widget.note.color = colors[index].value;
                    setState(() {

                    });
                  },
                  child: ColorItem(
                    isActive: currentIndex ==index,
                    color: colors[index],)),
            );
          }),
    );
  }
}
