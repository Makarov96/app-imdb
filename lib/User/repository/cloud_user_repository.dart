import 'package:movies/User/model/usermodel.dart';
import 'package:movies/User/repository/cloud_user_api.dart';

class CloudUserRepository {
     final _cloudUserAPI = CloudUserApi();

      //User info
     Future<UserModel> getInfoUser() => _cloudUserAPI.getInfoUser();

}