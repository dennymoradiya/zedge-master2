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
  Dio dio = await getdio();

  Response response = await dio.get(url);
  print("  -----------       ${response.data}");

  try {
    final getImage = GetImage.fromMap(response.data[0]);
    // print("getimage   $getImage");
    return getImage;
  } catch (e) {
    print("erroe $e");
    final getImage = GetImage();
    return getImage;
  }
}
