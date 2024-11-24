import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/shared/shared.dart';

class LoginPageTestHelper {
  /// Finder: 긱워커 찾기 탭
  static Finder companyTabFinder() {
    return find.byKey(Key('base_tab_${AccountType.company.toString()}'));
  }

  /// Finder: 새로운 일 찾기 탭
  static Finder userTabFinder() {
    return find.byKey(Key('base_tab_${AccountType.user.toString()}'));
  }

  /// Finder: 아이디 TextField
  static Finder idInputFinder() {
    return find.byKey(const Key('email_input'));
  }

  /// Finder: 비밀번호 TextFied
  static Finder passwordInputFinder() {
    return find.byKey(const Key('password_input'));
  }

  /// Finder: 아이디 TextField
  static Finder idErrorMessageFinder() {
    return find.byKey(const Key('email_input_error'));
  }

  /// Finder: 비밀번호 TextField
  static Finder passwordErrorMessageFinder() {
    return find.byKey(const Key('password_input_error'));
  }

  /// Finder: 로그인 버튼
  static Finder loginButtonFinder() {
    return find.byKey(const Key('login_button'));
  }

  // Finder: 비밀번호 표시 버튼
  static Finder passwordVisibleButton() {
    return find.byKey(const Key('password_visible_btn'));
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

  static BaseButton getPasswordVisibleButton(WidgetTester tester) {
    return tester.widget<BaseButton>(passwordVisibleButton());
  }
}
