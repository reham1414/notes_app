import 'package:flutter/material.dart';
import 'package:notes_app/views/screens/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
          color: const Color(0xFFFFCCB0),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children :[
            ListTile(
              title: const Text('Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26
              ),
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.only(bottom: 16 , top: 16),
                child: Text('Build your Career with Reham Helal',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.delete,
                  size: 26,
                    color: Colors.black,
                  ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 24),
               child: Text('Sep9,2023',
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
