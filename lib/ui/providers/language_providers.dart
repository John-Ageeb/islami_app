import 'package:flutter/material.dart';

/// Provider is one of State mangamnet consept.
/// State Managment concept is that we should rebulid screen when a dedecated action happend
///
/// setstate issue that it can rebulid the screen (Statful) only for one page
/// Provider: add the variable to a individual class, then if any screen need to call him, all screen will be rebulid basedd on the new value of this variable
///
///Provider is an external package should be added
///while crating provider, we should crate it in location can be used in all screen such as in Main (Matrial APP)

class LanguageProvider extends ChangeNotifier {
  String selectedLanguage = "en";
}
