import 'package:flutter/material.dart';

class VideoLDCard extends StatelessWidget {
  const VideoLDCard({
    required this.icon,
    required this.text,
    super.key,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Column(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
