import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_video_player_app/presentation/pages/view_video/bloc/bloc.dart';
import 'package:simple_video_player_app/presentation/pages/view_video/widgets/view_video_body.dart';

/// {@template view_video_page}
/// A description for ViewVideoPage
/// {@endtemplate}
class ViewVideoPage extends StatelessWidget {
  /// {@macro view_video_page}
  const ViewVideoPage({super.key});

  /// The static route for ViewVideoPage
  static Route<dynamic> route() {
    return CupertinoPageRoute<dynamic>(builder: (_) => const ViewVideoPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewVideoBloc(),
      child: const Scaffold(
        body: ViewVideoView(),
      ),
    );
  }
}

/// {@template view_video_view}
/// Displays the Body of ViewVideoView
/// {@endtemplate}
class ViewVideoView extends StatelessWidget {
  /// {@macro view_video_view}
  const ViewVideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewVideoBody();
  }
}
