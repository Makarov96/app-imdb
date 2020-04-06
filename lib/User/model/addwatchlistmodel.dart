import 'dart:convert';

Addwatchlistmodel addwatchlistmodelFromJson(String str) => Addwatchlistmodel.fromJson(json.decode(str));

String addwatchlistmodelToJson(Addwatchlistmodel data) => json.encode(data.toJson());

class Addwatchlistmodel {
    String mediaType;
    int mediaId;
    bool watchlist;

    Addwatchlistmodel({
        this.mediaType,
        this.mediaId,
        this.watchlist,
    });

    factory Addwatchlistmodel.fromJson(Map<String, dynamic> json) => Addwatchlistmodel(
        mediaType: json["media_type"],
        mediaId: json["media_id"],
        watchlist: json["watchlist"],
    );

    Map<String, dynamic> toJson() => {
        "media_type": mediaType,
        "media_id": mediaId,
        "watchlist": watchlist,
    };
}