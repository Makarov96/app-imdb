class Config {
  //General URL's and user info
  static String urlTMDB = "https://api.themoviedb.org/";
  static String user_id = "9193257";
  static String session_id = "c6ba0de85bed60be07b0cd285c6493ef6af97f3d";
  static String api_key ="a0376359a8bb816ae7266e4dda409ed1";
  static Map<String, String> headers = {"Content-type": "application/json"};

  //Part that is concatenated at the begind of the images
  static String imagePathURL = "https://image.tmdb.org/t/p/w500";

  // Get info user
  static String getUser ="${urlTMDB}3/account?api_key=${api_key}&session_id=${session_id}";

  //Get list movies
  static String getlisMovies = "${urlTMDB}3/list/1?api_key=${api_key}&language=en-US";

  static String findMovie = "${urlTMDB}3/search/movie?api_key=${api_key}&language=en-US&query=";

  //Part that is concatenated at the end of the find movie URL
  static String findEndMoviePart = "&page=1&include_adult=false";


  //get list favorites movies
  static String myfavoriteMoviesList = "${urlTMDB}3/account/${user_id}/favorite/movies?api_key=${api_key}&session_id=${session_id}&language=en-US&sort_by=created_at.asc&page=1";


  //add to my favorites list
  static String addFavoriteMovie = "${urlTMDB}3/account/${user_id}/favorite?api_key=${api_key}&session_id=${session_id}";


  //get  watchlist 
  static String myWatchlist = "${urlTMDB}3/account/${user_id}/watchlist/movies?api_key=${api_key}&language=en-US&session_id=${session_id}&sort_by=created_at.asc&page=1";

  //add movie to watchlist
  static String addWatchList = "${urlTMDB}3/account/${user_id}/watchlist?api_key=${api_key}&session_id=${session_id}";

}


