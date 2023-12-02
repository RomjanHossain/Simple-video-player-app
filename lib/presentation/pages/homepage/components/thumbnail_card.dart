import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_video_player_app/domain/entities/video_response_result_entity.dart';

class VideoThumbnailCard extends StatelessWidget {
  const VideoThumbnailCard({
    required this.videoResponseResultEntity,
    super.key,
  });
  final VideoResponseResultEntity videoResponseResultEntity;

  @override
  Widget build(BuildContext context) {
    // final date = DateFormat.yMMMMd('en_US').format(
    //   DateTime.parse(videoResponseResultEntity.created_at ?? '2021-09-01'),
    // );
    // date format like Feb 21, 2021
    final date = DateFormat.yMMMMd('en_US').format(
      DateTime.parse(videoResponseResultEntity.created_at ?? '2021-09-01'),
    );
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                videoResponseResultEntity.thumbnail ??
                    'https://placehold.co/600x400/EEE/31343C',
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    videoResponseResultEntity.duration ?? '00:00',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  videoResponseResultEntity.channel_image ??
                      'https://placehold.co/600x400/EEE/31343C',
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      videoResponseResultEntity.title?.trim() ?? 'No Title',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          '${videoResponseResultEntity.viewers} views',
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          date ?? '',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
