import 'dart:developer';

import 'package:book_box/core/theme/themes.dart';
import 'package:book_box/core/utils/Caching_keys.dart';
import 'package:book_box/di/serivce_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightTheme);
  bool isDark = getIt.get<SharedPreferences>().getBool(CachingKeys.themeKey)??false;

  changeTheme() {
    isDark = !isDark;

    getIt.get<SharedPreferences>().setBool(CachingKeys.themeKey, isDark);
    log("The Theme changed To ${isDark ? "todark" : "tolight"}");
    emit(getTheme());
  }

  ThemeData getTheme() {
    if (isDark) {
      emit(darkTheme);
      return darkTheme;
    } else {
      emit(lightTheme);
      return lightTheme;
    }
  }
}
