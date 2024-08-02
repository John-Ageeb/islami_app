import 'package:flutter/cupertino.dart';

/// setstate issue that it can rebulid the screen (Statful) only for one page
/// Provider: add the variable to a individual class, then if any screen need to call him, all screen will be rebulid basedd on the new value of this variable
///
///Provider is an external package should be added

class LanguageProvider extends ChangeNotifier {
  String selectedLanguage = "en";
}
