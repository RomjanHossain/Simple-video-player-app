part of 'view_video_bloc.dart';

abstract class ViewVideoEvent  extends Equatable {
  const ViewVideoEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_view_video_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomViewVideoEvent extends ViewVideoEvent {
  /// {@macro custom_view_video_event}
  const CustomViewVideoEvent();
}
