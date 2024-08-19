import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService{
  // Themes
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blueGrey.shade300,
    appBarTheme: const AppBarTheme(),
    dividerColor: Colors.black12,
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(),
    dividerColor: Colors.white,
  );

final _getStorage = GetStorage();
final _darkThemekey = 'isDarkTheme'; 


void saveThemeData(bool isDrakMode ){
_getStorage.write(_darkThemekey, isDrakMode);
}

bool isSavedDarkMode(){
  return _getStorage.read(_darkThemekey)?? false;
}

ThemeMode getThemeMode(){
  return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light ;
}

void changeTheme(){
  Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark );
  saveThemeData(!isSavedDarkMode());
}

}