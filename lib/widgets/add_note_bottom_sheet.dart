import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_2025/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app_2025/cubits/cubit/add_note_states.dart';
import 'package:notes_app_2025/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocListener<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNotesFailureState) {
              log('Falild >>> ${state.errMessage}');
            }
            if (state is AddNotesSuccessState) {
              Navigator.pop(context);
            }
          },
          child: SingleChildScrollView(child: AddNoteForm()),
        ),
      ),
    );
  }
}
