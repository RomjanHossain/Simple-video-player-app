import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_video_player_app/domain/entities/video_response_result_entity.dart';


class CurrentVideoCubit extends Cubit<VideoResponseResultEntity?> {
  CurrentVideoCubit() : super(null);

  void setVideo(VideoResponseResultEntity video) => emit(video);
  void clearVideo() => emit(null);
}
