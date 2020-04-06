import 'dart:convert';

AddlikeModel addlikeModelFromJson(String str) => AddlikeModel.fromJson(json.decode(str));

String addlikeModelToJson(AddlikeModel data) => json.encode(data.toJson());

class AddlikeModel {
    String mediaType;
    int mediaId;
    bool favorite;

    AddlikeModel({
        this.mediaType,
        this.mediaId,
        this.favorite,
    });

    factory AddlikeModel.fromJson(Map<String, dynamic> json) => AddlikeModel(
        mediaType: json["media_type"],
        mediaId: json["media_id"],
        favorite: json["favorite"],
    );

    Map<String, dynamic> toJson() => {
        "media_type": mediaType,
        "media_id": mediaId,
        "favorite": favorite,
    };
}
