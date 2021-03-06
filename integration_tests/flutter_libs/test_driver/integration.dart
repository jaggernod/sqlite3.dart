import 'dart:io';

import 'package:flutter_driver/driver_extension.dart';
import 'package:test/test.dart';
import 'package:sqlite3/sqlite3.dart';

void main() {
  enableFlutterDriverExtension();

  tearDownAll(() {
    // See https://github.com/flutter/flutter/issues/12427#issuecomment-464449765
    Future.delayed(const Duration(milliseconds: 50)).then((_) => exit(0));
  });

  test('can open sqlite3', () {
    print(sqlite3.version);
  });
}
