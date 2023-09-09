import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_button.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

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
          const SizedBox(height: 120,),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autoValidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
