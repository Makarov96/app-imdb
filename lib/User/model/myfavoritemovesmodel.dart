import 'dart:convert';

Myfavoritemovies myfavoritemoviesFromJson(String str) => Myfavoritemovies.fromJson(json.decode(str));

String myfavoritemoviesToJson(Myfavoritemovies data) => json.encode(data.toJson());

class Myfavoritemovies {
    int page;
    List<Result> results;
    int totalPages;
    int totalResults;

    Myfavoritemovies({
        this.page,
        this.results,
        this.totalPages,
        this.totalResults,
    });

    factory Myfavoritemovies.fromJson(Map<String, dynamic> json) => Myfavoritemovies(
        page: json["page"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}

class Result {
    int id;
    bool video;
    int voteCount;
    double voteAverage;
    String title;
    DateTime releaseDate;
    String originalLanguage;
    String originalTitle;
    List<int> genreIds;
    String backdropPath;
    bool adult;
    String overview;
    String posterPath;
    double popularity;

    Result({
        this.id,
        this.video,
        this.voteCount,
        this.voteAverage,
        this.title,
        this.releaseDate,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.backdropPath,
        this.adult,
        this.overview,
        this.posterPath,
        this.popularity,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        video: json["video"],
        voteCount: json["vote_count"],
        voteAverage: json["vote_average"].toDouble(),
        title: json["title"],
        releaseDate: DateTime.parse(json["release_date"]),
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        backdropPath: json["backdrop_path"],
        adult: json["adult"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        popularity: json["popularity"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "video": video,
        "vote_count": voteCount,
        "vote_average": voteAverage,
        "title": title,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "backdrop_path": backdropPath,
        "adult": adult,
        "overview": overview,
        "poster_path": posterPath,
        "popularity": popularity,
    };
}
