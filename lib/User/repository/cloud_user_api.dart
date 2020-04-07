import 'package:http/http.dart' as http;
import 'package:movies/Movies/model/addlikemovie.dart';
import 'package:movies/User/model/addwatchlistmodel.dart';
import 'package:movies/User/model/myfavoritemovesmodel.dart';
import 'package:movies/User/model/mywatchlistmodel.dart';
import 'package:movies/User/model/usermodel.dart';
import 'package:movies/Utils/config.dart';

class CloudUserApi {
  Future<UserModel> getInfoUser() async {
    final resp = await http.get(Config.getUser);
    return userModelFromJson(resp.body);
  }

  

 
}
