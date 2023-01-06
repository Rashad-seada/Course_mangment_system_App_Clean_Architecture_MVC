import 'package:dio/dio.dart';
import 'package:orange_dc/models/auth/login_model.dart';

class DioHelper {

  String baseUrl = 'https://workshop.orangedigitalcenteregypt.com/api/v1';
  Dio api = Dio();

  static DioHelper instance = DioHelper();

  String fullUrl(
      String endPoint)
  {
    return baseUrl + endPoint;
  }

  Future<LoginModel> Post(
      String email,
      String password,
      String endPoint)
  async {
    Map data = {
      "email":email,
      "password":password,
    };

    final response = await api.post(
        fullUrl(endPoint),
        data: data,
        )
        .then((value) {
          return LoginModel.fromJson(value.data);
        });

    print(response.data);
    return response;

  }

}
