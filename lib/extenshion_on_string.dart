import 'package:flutter/services.dart';

extension ValidationForm on String? {
  bool isAllCharacters() {
    return this?.codeUnits.every((element) =>
            (element >= 65 && element <= 90) ||
            (element >= 97 && element <= 122) ||
            element == LogicalKeyboardKey.space.keyId) ??
        false;
  }

  bool isOnlySpace() {
    return this
            ?.codeUnits
            .every((element) => element == LogicalKeyboardKey.space.keyId) ??
        false;
  }

  bool isAllDigits() {
    return this!.codeUnits.every((element) => element >= 48 && element <= 57);
  }

  bool isAllSpecialCharacters() {
    return this?.codeUnits.every((element) => element >= 32 && element <= 47
            //&&
            // element >= 58 &&
            // element <= 64 &&
            // element >= 123 &&
            // element <= 126
            ) ??
        false;
  }

  bool hasAnyDigit() {
    return this?.codeUnits.any((element) => element >= 47 && element <= 58) ??
        false;
  }

  bool hasAnyCharacter() {
    return this?.codeUnits.any((element) =>
            element >= LogicalKeyboardKey.keyA.keyId &&
                element <= LogicalKeyboardKey.keyZ.keyId ||
            element == LogicalKeyboardKey.space.keyId) ??
        false;
  }

  bool hasAnySpecialCharacter() {
    return true;
  }

  //[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-0123456789]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?
  bool isValidEmail() {
    final bool emailValid = RegExp(
            r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-][0123456789]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[com]")
        .hasMatch(this!);
    return emailValid;
  }
}
