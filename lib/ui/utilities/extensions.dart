import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get localization => AppLocalizations.of(this)!;
}

/// extension: can extend class and use any function inside extension class as it write insed parent class
/// Should be used with the defult classes which ahrady defind in Flutter SDK
///

// class X{
//
//   late String name;
//
// }
//
// extension XE on X{
//   void printName() {
//     print(name);
//   }

/// Getter and Setter:
///Getter: if we need to use/call variable inside class and this variable is privite (use inside class only
///Setter: if we need to change privite variable inside anouther class
///Setter fucation alwaes return void
///Getter alawayes did not recieve data from function
///
/// the main reson to use Getter and Setter functions that if we need to add "logic" while calling variables
///
///Privite variable in dart should add (_) before it
///
///
///
///
///
//
//
// main(){
//
//   Person x;
//   x.setName("newName");
// x.getName;
// }
//
// class Person{
//   String? name;
//
// String  getName() {
//   return name;
// }
//
// void setName(String newName){
//   if (newName.length>10 ) {
//     this.name = newName;
//   }
// }
//
// }
