import 'package:http/http.dart' as http;
import 'package:movies/User/model/usermodel.dart';
import 'package:movies/Utils/config.dart';

class CloudUserApi {
  Future<UserModel> getInfoUser() async {
    final resp = await http.get(Config.getUser);
    return userModelFromJson(resp.body);
  }

}
