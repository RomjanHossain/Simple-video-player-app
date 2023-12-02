import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_video_player_app/domain/entities/video_response_entity.dart';

class VideoFetchAPI {
  final Map<String, String> _headers = <String, String>{
    'Accept': 'application/json',
    'Content-Type': 'application/json; charset=UTF-8',
    // 'Authorization': 'Bearer ${ApiKeys.urlBayToken}',
  };

  Future<VideoResponseEntity?> getVideos() async {
    debugPrint('getting videos');
    const url =
        'https://test-ximit.mahfil.net/api/trending-video/1?format=json&page=1';
    final response = await http.get(Uri.parse(url), headers: _headers);
    if (response.statusCode == 200) {
      final jsonD = json.decode(utf8.decode(response.bodyBytes));
      try {
        // print each ones type and value
        jsonD.forEach((key, value) {
          print('$key: ${value.runtimeType}');
        });
        final videoResponseEntity =
            VideoResponseEntity.fromJson(jsonD as Map<String, dynamic>);
        debugPrint('videoResponseEntity: $videoResponseEntity');
        return videoResponseEntity;
      } catch (e) {
        debugPrint('exception: $e');
      }
    }
    debugPrint('response: ${response.statusCode}');
    return null;
  }
}
