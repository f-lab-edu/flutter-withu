import 'package:shared_preferences/shared_preferences.dart';

import 'storage_key.dart';

part 'storage_impl.dart';

abstract class AccountStorage {
  /// 세션 Id 불러오기
  Future<String> getSessionId();

  /// 세션 Id 저장
  void setSessionId({
    required String id,
  });
}
