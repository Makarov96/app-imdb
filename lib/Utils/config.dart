class Config {
  //General URL's and user info
  static String urlTMDB = "https://api.themoviedb.org/";
  static String user_id = "9193257";
  static String session_id = "c6ba0de85bed60be07b0cd285c6493ef6af97f3d";
  static String api_key ="a0376359a8bb816ae7266e4dda409ed1";

  //Part that is concatenated at the begind of the images
  static String imagePathURL = "https://image.tmdb.org/t/p/w500";

  // Get info user
  static String getUser ="${urlTMDB}3/account?api_key=${api_key}&session_id=${session_id}";

  //Get list movies
  static String getlisMovies = "${urlTMDB}3/list/1?api_key=${api_key}&language=en-US";

  static String findMovie = "${urlTMDB}3/search/movie?api_key=${api_key}&language=en-US&query=";

  //Part that is concatenated at the end of the find movie URL
  static String findEndMoviePart = "&page=1&include_adult=false";


  //PENDIENTE traer lista de mis peliculas favorita
  static String myfavoriteMoviesList = "https://api.themoviedb.org/3/account/${user_id}/favorite/movies?api_key=${api_key}&session_id=${session_id}&language=en-US&sort_by=created_at.asc&page=1";


  //PENDIENTE marcar como favorito
  static String addFavoriteMovie = "${urlTMDB}3/account/${user_id}/favorite?api_key=${api_key}&session_id=${session_id}";
  /*
  method: post
  json info:
  {
  "media_type": "movie",
  "media_id": 550,
  "favorite": true
  }
   */

}

/**
 * private key of TMDB: c6ba0de85bed60be07b0cd285c6493ef6af97f3d
 * my favorite movie: https://api.themoviedb.org/3/account/{9193257}/favorite/movies?api_key={a0376359a8bb816ae7266e4dda409ed1}&session_id={c6ba0de85bed60be07b0cd285c6493ef6af97f3d}
 * 
*/
