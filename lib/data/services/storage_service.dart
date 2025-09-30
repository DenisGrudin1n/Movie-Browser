import 'package:movie_browser/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  final SharedPreferences _prefs;

  StorageService(this._prefs);

  Future<String> getFavorites() async {
    return _prefs.getString(Constants.favoritesKey) ?? '';
  }

  Future<void> saveFavorites(String favoritesJson) async {
    await _prefs.setString(Constants.favoritesKey, favoritesJson);
  }
}
