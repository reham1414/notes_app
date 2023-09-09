import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel noteModel) async{
    emit(AddNoteLoading());
 try {
   var notesBox = Hive.box(kNotesBox);
    await notesBox.add(noteModel);
    emit(AddNoteSuccess());
 }  catch (e) {
   emit(AddNoteFailure(e.toString()));
 }}}
