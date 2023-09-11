import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widget/colors_listview.dart';
import 'package:notes_app/views/widget/custom_button.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';
import 'package:intl/intl.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value){title=value;},
            hintText: 'Title',
          ),
          const SizedBox(height: 20,),
          CustomTextField(
            onSaved: (value){subTitle=value;},
            hintText: 'Content',
            maxLines: 5,
          ),
          const ColorsListView(),
          const SizedBox(height: 120,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteFailure ? true : false,
                onTap: (){
                if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                var currentDate =DateTime.now();
                var formattedDate =DateFormat('dd-mm-yyyy').format(currentDate);
                var noteModel =NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date:formattedDate,
                    color:const Color(0xFFFFCCB0).value
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }
              else{
                autoValidateMode = AutovalidateMode.always;
              }
            },
          );
  },
),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}

