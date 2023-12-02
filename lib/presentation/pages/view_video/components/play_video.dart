import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayTheVideo extends StatefulWidget {
  const PlayTheVideo({
    this.url,
    super.key,
    this.thumbnailURL,
  });
  final String? url;
  final String? thumbnailURL;

  @override
  _PlayTheVideoState createState() => _PlayTheVideoState();
}

class _PlayTheVideoState extends State<PlayTheVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        widget.url ??
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? GestureDetector(
            onTap: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          )
        : Image.network(
            widget.thumbnailURL ?? 'https://placehold.co/600x400/EEE/31343C',
            fit: BoxFit.cover,
          );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
