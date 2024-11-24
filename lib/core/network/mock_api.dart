import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'dio_network.dart';

mixin MockAPI on DioNetwork {
  late final DioAdapter _dioAdapter = DioAdapter(dio: dio);

  DioAdapter get dioAdapter => _dioAdapter;
}
