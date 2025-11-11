class AddNotesStates {}

class InitailState extends AddNotesStates {}

class AddNotesLoadingState extends AddNotesStates {}

class AddNotesSuccessState extends AddNotesStates {}

class AddNotesFailureState extends AddNotesStates {
  final String errMessage;

  AddNotesFailureState({required this.errMessage});
}
