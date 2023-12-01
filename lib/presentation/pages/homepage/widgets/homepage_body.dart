import 'package:flutter/material.dart';
import 'package:simple_video_player_app/presentation/pages/homepage/bloc/bloc.dart';

/// {@template homepage_body}
/// Body of the HomepagePage.
///
/// Add what it does
/// {@endtemplate}
class HomepageBody extends StatefulWidget {
  /// {@macro homepage_body}
  const HomepageBody({super.key});

  @override
  State<HomepageBody> createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              'Trending Videos',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        );
      },
    );
  }
}
