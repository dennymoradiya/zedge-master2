import 'package:flutter/material.dart';
import 'package:zedge/view/screens/feature_list.dart';
import 'package:zedge/view/widgets/categories_gridview.dart';
import 'package:zedge/view/widgets/popular_view.dart';
import 'package:zedge/view/widgets/title_widget.dart';
import 'package:zedge/view/widgets/wallpaper_categories.dart';

import '../widgets/ring_screen.dart';
class RingtoneTabView extends StatelessWidget {
  const RingtoneTabView({Key? key}) : super(key: key);

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
