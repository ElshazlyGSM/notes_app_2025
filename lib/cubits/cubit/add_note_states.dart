class AddNoteStates {}

class InitailState extends AddNoteStates {}

class AddNotesLoadingState extends AddNoteStates {}

class AddNotesSuccessState extends AddNoteStates {}

class AddNotesFailureState extends AddNoteStates {
  final String errMessage;

  AddNotesFailureState({required this.errMessage});
}
