import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/note_form.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          else if (state is AddNoteFailure) {
            showDialog(context: context, builder: (context) {
              return SnackBar(content: Text(state.errorMsg));
            });
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(

                child: NoteForm(),),
            ),
          );
        },
      ),
    );
  }
}

