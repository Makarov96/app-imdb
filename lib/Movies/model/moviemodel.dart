import 'dart:convert';

MovieModel movieModelFromJson(String str) => MovieModel.fromJson(json.decode(str));

String movieModelToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel {
    String posterPath;
    double popularity;
    int voteCount;
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

    MovieModel({
        this.posterPath,
        this.popularity,
        this.voteCount,
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

    factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        posterPath: json["poster_path"],
        popularity: json["popularity"].toDouble(),
        voteCount: json["vote_count"],
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
