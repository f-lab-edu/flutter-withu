import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

enum SignUpPageKey with WidgetKeyUtils {
  name(key: 'name'),
  birthDate(key: 'birth_date'),
  gender(key: 'gender'),
  password(key: 'password'),
  passwordVerify(key: 'password_verify'),
  submitBtn(key:'submit_btn');

  final String key;

  const SignUpPageKey({required this.key});

  @override
  String getKey() {
    return key;
  }
}
