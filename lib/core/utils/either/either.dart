import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
class Either<T> with _$Either<T> {
  const factory Either.success(T data) = _Success<T>;

  const factory Either.fail(String message) = _Fail;
}

extension EitherExt on Either {
  bool get isSuccess => maybeWhen(
        success: (_) => true,
        orElse: () => false,
      );

  bool get isFail => maybeWhen(
        fail: (_) => true,
        orElse: () => false,
      );
}
