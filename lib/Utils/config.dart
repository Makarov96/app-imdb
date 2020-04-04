
class Config {
  static String urlTMDB= "https://api.themoviedb.org/";
  static String getUser= "${urlTMDB}3/account?api_key=a0376359a8bb816ae7266e4dda409ed1&session_id=c6ba0de85bed60be07b0cd285c6493ef6af97f3d";
  static String getlisMovies= "${urlTMDB}3/list/1?api_key=a0376359a8bb816ae7266e4dda409ed1&language=en-US";
  static String findMovie= "${urlTMDB}3/search/movie?api_key=a0376359a8bb816ae7266e4dda409ed1&language=en-US&query=Nemo";
  static String imagePathURL = "https://image.tmdb.org/t/p/w500";
}




/**
 * private key of TMDB: c6ba0de85bed60be07b0cd285c6493ef6af97f3d
 * mis favoritas movies: https://api.themoviedb.org/3/account/{ID}/favorite/movies?api_key={API_KEY}&session_id={SESSION_ID}
 * esta parte va concatenada al final de nombre que se esta buscando 
 * &page=1&include_adult=false 
*/
