

import 'package:flutter/material.dart';
import 'package:zedge/view/widgets/categories_gridview.dart';
import 'package:zedge/view/widgets/ring_screen.dart';
import 'package:zedge/view/widgets/title_widget.dart';
import 'package:zedge/view/widgets/wallpaper_categories.dart';

import 'feature_list.dart';

class NotificationTabView extends StatelessWidget {
  const NotificationTabView({Key? key}) : super(key: key);

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
            Ringscreen()
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
            Ringscreen()
           
          ],
        )
      ],
    );
  }
}
