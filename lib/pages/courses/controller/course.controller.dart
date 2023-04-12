import 'package:get/get.dart';

import '../../../utils/storageService.dart';

class CourseController extends GetxController {
  RxString selectedValue = "Courses".obs;
  RxBool switchValue = false.obs;
  DarkThemePreference darkThemePreference = DarkThemePreference();

  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkThemeF(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    // notifyListeners();
  }
}
