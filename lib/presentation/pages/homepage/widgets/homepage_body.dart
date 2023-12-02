import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:simple_video_player_app/data/datasources/remote/api_data.dart';
import 'package:simple_video_player_app/domain/entities/video_response_entity.dart';
import 'package:simple_video_player_app/domain/entities/video_response_result_entity.dart';
import 'package:simple_video_player_app/presentation/cubit/current_video_cubit.dart';
import 'package:simple_video_player_app/presentation/pages/homepage/bloc/bloc.dart';
import 'package:simple_video_player_app/presentation/pages/homepage/components/thumbnail_card.dart';
import 'package:simple_video_player_app/presentation/pages/view_video/view/view_video_page.dart';

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
  final PagingController<int, VideoResponseResultEntity> _pagingController =
      PagingController(firstPageKey: 1);
  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await VideoFetchAPI().getVideos();

      final isLastPage = newItems?.links.next == pageKey;
      if (isLastPage && newItems?.results != null) {
        _pagingController.appendLastPage(newItems?.results ?? []);
      } else {
        final nextPageKey = pageKey + 1;
        if (newItems?.results != null) {
          if (newItems?.results != null) {
            _pagingController.appendPage(newItems!.results, nextPageKey);
          }
        }
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener(_fetchPage);

    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Videos',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Expanded(
                child: PagedListView<int, VideoResponseResultEntity>(
                  pagingController: _pagingController,
                  builderDelegate:
                      PagedChildBuilderDelegate<VideoResponseResultEntity>(
                    itemBuilder: (context, item, index) => GestureDetector(
                      onTap: () {
                        BlocProvider.of<CurrentVideoCubit>(context)
                            .setVideo(item);
                        Navigator.push(context, ViewVideoPage.route());
                      },
                      child: VideoThumbnailCard(
                        videoResponseResultEntity: item,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
