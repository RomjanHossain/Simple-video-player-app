import 'package:flutter/material.dart';
import 'package:simple_video_player_app/presentation/cubit/current_video_cubit.dart';
import 'package:simple_video_player_app/presentation/pages/view_video/bloc/bloc.dart';
import 'package:simple_video_player_app/presentation/pages/view_video/components/like_card.dart';
import 'package:simple_video_player_app/presentation/pages/view_video/components/play_video.dart';

/// {@template view_video_body}
/// Body of the ViewVideoPage.
///
/// Add what it does
/// {@endtemplate}
class ViewVideoBody extends StatelessWidget {
  /// {@macro view_video_body}
  const ViewVideoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewVideoBloc, ViewVideoState>(
      builder: (context, state) {
        final state = context.watch<CurrentVideoCubit>().state;
        if (state != null) {
          final days = DateTime.now().difference(
            DateTime.parse(state.created_at ?? '2021-09-01'),
          );
          return ListView(
            children: [
              SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    PlayTheVideo(
                      thumbnailURL: state.thumbnail,
                      url: state.manifest,
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  state.title ?? 'Title',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    // views
                    Text(
                      '${state.viewers ?? 0} views',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                      child: Text(
                        '.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // created_at - todays date then show days ago
                    Text(
                      days.inDays > 0 ? '${days.inDays} days ago' : 'Today',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      VideoLDCard(
                        icon: Icons.heart_broken_outlined,
                        text: 'MASH ALLAH (12K)',
                      ),
                      VideoLDCard(
                        icon: Icons.thumb_up_alt_outlined,
                        text: 'LIKE (12K)',
                      ),
                      VideoLDCard(
                        icon: Icons.share,
                        text: 'SHARE',
                      ),
                      VideoLDCard(
                        icon: Icons.flag_outlined,
                        text: 'REPORT',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        state.channel_image ??
                            'https://placehold.co/600x400/EEE/31343C',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.channel_name ?? 'User Name',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('${state.channel_subscriber} subscribers'),
                      ],
                    ),
                    FilledButton.tonal(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xff3898fc),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(0.6),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Comments 7.5k',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a public comment...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                    suffixIcon: const Icon(
                      Icons.send_outlined,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const CircleAvatar(),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Fahmida Khanom',
                                style: Theme.of(context).textTheme.titleMedium,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                '2 days ago',
                                style: TextStyle(
                                  fontSize: 9,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'We should dub his lecture in English to reach more people around the world',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
        return const Text('No video selected');
      },
    );
  }
}
