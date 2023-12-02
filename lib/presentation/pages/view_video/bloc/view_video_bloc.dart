import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'view_video_event.dart';
part 'view_video_state.dart';

class ViewVideoBloc extends Bloc<ViewVideoEvent, ViewVideoState> {
  ViewVideoBloc() : super(const ViewVideoInitial()) {
    on<CustomViewVideoEvent>(_onCustomViewVideoEvent);
  }

  FutureOr<void> _onCustomViewVideoEvent(
    CustomViewVideoEvent event,
    Emitter<ViewVideoState> emit,
  ) {
    // TODO: Add Logic
  }
}
