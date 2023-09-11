import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>
{
  List<NoteModel>? notes;
  NotesCubit() : super(NotesInitial());
  fetchData() async{

      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();
emit(NotesSuccess());
    }
}
