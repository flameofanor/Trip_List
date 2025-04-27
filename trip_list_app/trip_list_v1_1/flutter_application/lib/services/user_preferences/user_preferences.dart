import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class UserPreferences {
 static const String _fileName = 'user_preferences.json';
 late final File _preferencesFile;
 Map<String, dynamic> _preferences = {};
 
 static final UserPreferences _instance = UserPreferences._internal();

 factory UserPreferences() {
   return _instance;
 }
 
 UserPreferences._internal();
 
 Future<void> initialize() async {
   final directory = await getApplicationDocumentsDirectory();
   _preferencesFile = File('${directory.path}/$_fileName');
   
   if (await _preferencesFile.exists()) {
     String contents = await _preferencesFile.readAsString();
     _preferences = json.decode(contents);
   } else {
     // Default preferences
     _preferences = {
       'darkMode': false,
       'modules': ['climbing']
     };
     await _saveToFile();
   }
 }
 
 Future<void> _saveToFile() async {
   await _preferencesFile.writeAsString(json.encode(_preferences));
 }
 
 dynamic get(String key) {
   return _preferences[key];
 }

 List<String> getModules() {
    return List<String>.from(_preferences["modules"] as List);
 }


 
 Future<void> set(String key, dynamic value) async {
   _preferences[key] = value;
   await _saveToFile();
 }
}
