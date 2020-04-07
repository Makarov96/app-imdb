import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'usermodel.g.dart';

@JsonSerializable()

class UserModel extends Equatable  {
    Avatar avatar;
    int id;
    String iso6391;
    String iso31661;
    String name;
    bool includeAdult;
    final String username;

    UserModel({
        this.avatar,
        this.id,
        this.iso6391,
        this.iso31661,
        this.name,
        this.includeAdult,
        this.username,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        avatar: Avatar.fromJson(json["avatar"]),
        id: json["id"],
        iso6391: json["iso_639_1"],
        iso31661: json["iso_3166_1"],
        name: json["name"],
        includeAdult: json["include_adult"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar.toJson(),
        "id": id,
        "iso_639_1": iso6391,
        "iso_3166_1": iso31661,
        "name": name,
        "include_adult": includeAdult,
        "username": username,
    };

  @override
  // TODO: implement props
  List<Object> get props => null;


}

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());

class Avatar {
    Gravatar gravatar;

    Avatar({
        this.gravatar,
    });

    factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        gravatar: Gravatar.fromJson(json["gravatar"]),
    );

    Map<String, dynamic> toJson() => {
        "gravatar": gravatar.toJson(),
    };
}

class Gravatar {
    String hash;

    Gravatar({
        this.hash,
    });

    factory Gravatar.fromJson(Map<String, dynamic> json) => Gravatar(
        hash: json["hash"],
    );

    Map<String, dynamic> toJson() => {
        "hash": hash,
    };
}
