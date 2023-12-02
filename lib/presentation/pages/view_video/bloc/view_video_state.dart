part of 'view_video_bloc.dart';

/// {@template view_video_state}
/// ViewVideoState description
/// {@endtemplate}
class ViewVideoState extends Equatable {
  /// {@macro view_video_state}
  const ViewVideoState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current ViewVideoState with property changes
  ViewVideoState copyWith({
    String? customProperty,
  }) {
    return ViewVideoState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template view_video_initial}
/// The initial state of ViewVideoState
/// {@endtemplate}
class ViewVideoInitial extends ViewVideoState {
  /// {@macro view_video_initial}
  const ViewVideoInitial() : super();
}
