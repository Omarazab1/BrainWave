import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

}