import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/shared/shared.dart';

class LoginPageTestHelper {
  static Finder companyTabFinder() {
    return find.byKey(Key('base_tab_${AccountType.company.toString()}'));
  }

  static Finder userTabFinder() {
    return find.byKey(Key('base_tab_${AccountType.user.toString()}'));
  }

  static Finder idInputFinder() {
    return find.byKey(const Key('email_input'));
  }

  static Finder passwordInputFinder() {
    return find.byKey(const Key('password_input'));
  }

  static Finder loginButtonFinder() {
    return find.byKey(const Key('login_button'));
  }

  static BaseTab getCompanyTab(WidgetTester tester) {
    return tester.widget<BaseTab>(companyTabFinder());
  }

  static BaseTab getUserTab(WidgetTester tester) {
    return tester.widget<BaseTab>(userTabFinder());
  }

  static BaseInput getIdInput(WidgetTester tester) {
    return tester.widget<BaseInput>(idInputFinder());
  }

  static BaseInput getPasswordInput(WidgetTester tester) {
    return tester.widget<BaseInput>(passwordInputFinder());
  }
  static BaseButton getLoginButton(WidgetTester tester) {
    return tester.widget<BaseButton>(loginButtonFinder());
  }
}
