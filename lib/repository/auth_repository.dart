import 'package:mvvm/data/network/baseApiServices.dart';
import 'package:mvvm/data/network/networkApiService.dart';
import 'package:mvvm/res/components/app_url.dart';

class AuthRepository {
  final BaseApiService _apiService = NetWorkApiService();

  Future<dynamic> loginApi(String email, String password) async {
    try {
      dynamic response = await _apiService.getPostApiResponse(AppUrl.loginUrl, email, password);
      print(response);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> registerApi(String email, String password) async {
    try {
      dynamic response = await _apiService.getPostApiResponse(AppUrl.registerApiEndpoint,email,password);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
