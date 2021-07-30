import 'package:flutter/material.dart';
import 'package:zedge/view/api/server_comunication.dart';
import 'package:zedge/view/api/wall_model.dart';
import 'package:zedge/view/screens/feature_list.dart';
import 'package:zedge/view/widgets/categories_gridview.dart';
import 'package:zedge/view/widgets/popular_view.dart';
import 'package:zedge/view/widgets/title_widget.dart';
import 'package:zedge/view/widgets/wallpaper_categories.dart';

class WallpaperTabView extends StatelessWidget {
  const WallpaperTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetImage>(
      future: getrespo(),
      builder: (BuildContext context, AsyncSnapshot<GetImage> snapshot) {
        if (snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.data != null ||
            snapshot.connectionState == ConnectionState.done) {
          var data = snapshot.data!;
          // var url =data[0];
          
          print("data====  $data");


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
                    isVideo: false,
                  )
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: WallpaperCategories(data: data,),
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
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
