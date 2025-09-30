import 'package:flutter/material.dart';

class Constants {
  // Reference screen dimensions (e.g., iPhone 15) for scaling.
  static const double referenceWidth = 393.0;
  static const double referenceHeight = 852.0;

  static const String tmdbPosterImageBaseEndpoint =
      'https://image.tmdb.org/t/p/w500';
  static const favoritesKey = 'favorites';

  static const Color backgroundDark = Color.fromARGB(255, 33, 33, 33);
  static const Color mainLight = Colors.white;
  static const Color amber = Color.fromRGBO(255, 193, 7, 1);
  static const Color red = Colors.red;
  static const Color grey = Colors.grey;
}
