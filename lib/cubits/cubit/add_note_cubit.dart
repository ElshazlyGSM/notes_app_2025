import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_2025/constants.dart';
import 'package:notes_app_2025/cubits/cubit/add_note_states.dart';
import 'package:notes_app_2025/models/notes_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(InitailState());

  addNote(NotesModel note) async {
    emit(AddNotesLoadingState());
    try {
      var noteBox = Hive.box<NotesModel>(kNotesBox);
      emit(AddNotesSuccessState());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNotesFailureState(errMessage: e.toString()));
    }
  }
}
