import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/feature/account/account.dart';

class MockAccountUserCase extends Mock implements AccountUseCase {}

void main() {
  late MockAccountUserCase accountUserCase;
  late PhoneAuthBloc phoneAuthBloc;

  setUp(() {});
}
