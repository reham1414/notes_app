import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/screens/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:  Color(noteModel.color),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children :[
            ListTile(
              title:  Text(noteModel.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 26
              ),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(bottom: 16 , top: 16),
                child: Text(noteModel.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: (){
                    noteModel.delete();
                  },
                  icon: const Icon(Icons.delete,
                  size: 26,
                    color: Colors.black,
                  ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 24),
               child: Text(noteModel.date,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16
            ),
            ),
             ),
          ],
        ),
      ),
    );
  }
}
