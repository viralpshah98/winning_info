import 'package:get_storage/get_storage.dart';

const kAuthorizationToken = 'kAuthorizationToken';
const kRefreshToken = 'kRefreshToken';
const kDeviceToken = 'kDeviceToken';
const kExclusiveAccessToken = 'kExclusiveAccessToken';
const kThemeConfigurations = 'kThemeConfigurations';
const kSelectedLanguage = 'kSelectedLanguage';
const kRequestFilterType = 'kRequestFilterType';
const kLocationResponseModel = 'kLocationResponseModel';
const kUserResponseModel = 'kUserResponseModel';
const kStayLogin = 'kStayLogin';
const kStayIn = 'kStayIn';
const kFontSize = 'kFontSize';

class GetStorageUtils {
  static GetStorage get storage => GetStorage();

  static void setString(String key, String value) {
    storage.write(key, value);
  }

  static Future<String> getString(String key, String defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static void setStringList(String key, List<String> values) {
    storage.write(key, values);
  }

  static Future<List<String>> getStringList(String key) async {
    return storage.read(key);
  }

  static void setInt(String key, int value) {
    storage.write(key, value);
  }

  static Future<int> getInt(String key, int defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static void setDouble(String key, double value) {
    storage.write(key, value);
  }

  static Future<double> getDouble(String key, double defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static void setBoolean(String key, bool value) {
    storage.write(key, value);
  }

  static Future<bool> getBoolean(String key, bool defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static Future<void> clearStorage() async {
    return storage.erase();
  }
}
