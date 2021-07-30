import 'package:flutter/material.dart';
import 'package:zedge/view/screens/feature_list.dart';
import 'package:zedge/view/widgets/categories_gridview.dart';
import 'package:zedge/view/widgets/popular_view.dart';
import 'package:zedge/view/widgets/title_widget.dart';
import 'package:zedge/view/widgets/wallpaper_categories.dart';

class VideoWallpaperTabView extends StatelessWidget {
  const VideoWallpaperTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        CustomScrollView(
          semanticChildCount: 1,
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: HeadingWidget(
              title: "Featured",
            )),
            SliverToBoxAdapter(
              child: FeatureList(),
            ),
            SliverToBoxAdapter(
              child: HeadingWidget(
                title: "Popular",
              ),
            ),
            PopularGridview(
              isVideo: true,
            )
          ],
        ),
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: WallpaperCategories(),
            ),
            Categoriesgrid(),
          ],
        ),
        CustomScrollView(
          slivers: [
            PopularGridview(
              isVideo: true,
            )
          ],
        )
      ],
    );
  }
}
