import 'package:flutter/material.dart';
import 'package:simple_video_player_app/presentation/pages/homepage/bloc/bloc.dart';

/// {@template homepage_body}
/// Body of the HomepagePage.
///
/// Add what it does
/// {@endtemplate}
class HomepageBody extends StatelessWidget {
  /// {@macro homepage_body}
  const HomepageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
