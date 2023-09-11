import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?
     CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: color,
      ),
    )
        :  CircleAvatar(
      radius: 30,
      backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context , index){
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index ;
                    BlocProvider.of<AddNoteCubit>(context).color= colors[index];
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
