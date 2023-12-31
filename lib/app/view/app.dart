import 'package:flutter/material.dart';
import 'package:simple_video_player_app/l10n/l10n.dart';
import 'package:simple_video_player_app/presentation/cubit/current_video_cubit.dart';
import 'package:simple_video_player_app/presentation/pages/homepage/homepage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrentVideoCubit>(
          create: (context) => CurrentVideoCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          scaffoldBackgroundColor: const Color(0xfff7fafc),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomepagePage(),
      ),
    );
  }
}
