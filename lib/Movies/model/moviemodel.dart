import 'dart:convert';

MoviesModel movieModelFromJson(String str) => MoviesModel.fromJson(json.decode(str));

String movieModelToJson(MoviesModel data) => json.encode(data.toJson());

class MoviesModel {
    String createdBy;
    String description;
    int favoriteCount;
    String id;
    List<Movie> items;
    int itemCount;
    String iso6391;
    String name;
    String posterPath;

    MoviesModel({
        this.createdBy,
        this.description,
        this.favoriteCount,
        this.id,
        this.items,
        this.itemCount,
        this.iso6391,
        this.name,
        this.posterPath,
    });

    factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        createdBy: json["created_by"],
        description: json["description"],
        favoriteCount: json["favorite_count"],
        id: json["id"],
        items: List<Movie>.from(json["items"].map((x) => Movie.fromJson(x))),
        itemCount: json["item_count"],
        iso6391: json["iso_639_1"],
        name: json["name"],
        posterPath: json["poster_path"],
    );

    Map<String, dynamic> toJson() => {
        "created_by": createdBy,
        "description": description,
        "favorite_count": favoriteCount,
        "id": id,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "item_count": itemCount,
        "iso_639_1": iso6391,
        "name": name,
        "poster_path": posterPath,
    };
}

class Movie {
    String posterPath;
    double popularity;
    int voteCount;
    bool video;
    String mediaType;
    int id;
    bool adult;
    String backdropPath;
    String originalLanguage;
    String originalTitle;
    List<int> genreIds;
    String title;
    double voteAverage;
    String overview;
    DateTime releaseDate;

    Movie({
        this.posterPath,
        this.popularity,
        this.voteCount,
        this.video,
        this.mediaType,
        this.id,
        this.adult,
        this.backdropPath,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.title,
        this.voteAverage,
        this.overview,
        this.releaseDate,
    });

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        posterPath: json["poster_path"],
        popularity: json["popularity"].toDouble(),
        voteCount: json["vote_count"],
        video: json["video"],
        mediaType: json["media_type"],
        id: json["id"],
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        overview: json["overview"],
        releaseDate: DateTime.parse(json["release_date"]),
    );

    Map<String, dynamic> toJson() => {
        "poster_path": posterPath,
        "popularity": popularity,
        "vote_count": voteCount,
        "video": video,
        "media_type": mediaType,
        "id": id,
        "adult": adult,
        "backdrop_path": backdropPath,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "title": title,
        "vote_average": voteAverage,
        "overview": overview,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
    };
}