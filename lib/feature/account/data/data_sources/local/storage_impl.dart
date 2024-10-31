part of 'storage.dart';

class AccountStorageImpl implements AccountStorage {
  /// 세션 Id 불러오기
  @override
  Future<String?> getSessionId() async {
    return SharedPreferences.getInstance().then(
      (preference) => preference.getString(
        AccountStorageKey.sessionId.name,
      ),
    );
  }

  /// 세션 Id 저장
  @override
  void setSessionId({
    required String id,
  }) {
    SharedPreferences.getInstance().then(
      (preference) => preference.setString(
        AccountStorageKey.sessionId.name,
        id,
      ),
    );
  }
}
