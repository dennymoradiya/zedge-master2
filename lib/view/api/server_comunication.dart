
import 'package:dio/dio.dart';
import 'package:zedge/view/api/wall_model.dart';

var url =
    "https://api.unsplash.com/photos?client_id=C1g0wg37kJ2Xvr6cHerGhPUDCOxcyRLtpPZu1fJKlFI";

Future<Dio> getdio() async {
  var options = BaseOptions(
      validateStatus: (status) {
        return status! < 500;
      },
      baseUrl: url,
      responseType: ResponseType.json,
      followRedirects: false);
  Dio dio = Dio(options);
  return dio;
}

Future<GetImage> getrespo() async {
  // var data;
  // List imgurl=[];

  Dio dio = await getdio();
  Response response = await dio.get(url);
  // data = jsonDecode(response.data) ;
  // for (var i = 0; i < data.length; i++) {
  //   imgurl.add(data.elementAt(i)["url"]["small"]);
  // }


  // print("  ===============    $data");
  // print("  -----------       ${imgurl[0]}");

  // List<dynamic> ldata = response.data;
  // var getimage ;
  // List<GetImage> myModels;
  try {
    // ldata.map((e) {
    //     getimage = GetImage.fromMap(e as Map<String, dynamic>);

    //   return getimage;
    // }).toList();
    // print(getimage);
    // return getimage;
    //  myModels=(json.decode(response.data) as List).map((i) => GetImage.fromMap(i)).toList();
    //  print(myModels);
    //  return myModels;
    //  return geti;

    final getImage = GetImage.fromJson(response.data.toString());
    print("getimage   $getImage");
    return getImage;
  } catch (e) {
    print("erroe $e");
    final getImage = GetImage();
    return getImage;
    //  List<GetImage> myModels= [];
    //  print("eoor =============$myModels");
    //  return myModels;
  }
}
