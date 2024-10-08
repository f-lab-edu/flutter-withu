import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'api.dart';

mixin MockAPI on API {
  late final DioAdapter _dioAdapter = DioAdapter(dio: dio);

  DioAdapter get dioAdapter => _dioAdapter;
}
