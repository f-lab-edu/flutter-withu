import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/dto.dart';

abstract class AccountApi {
  /// API 주소
  final path = "/api/account";

  /// 로그인 주소
  late final loginPath = '$path/login';

  /// 휴대폰 인증 요청 주소
  late final sendAuthCodePath = '$path/verify/phone_auth.dart';

  /// 인증번호 검증 요청
  late final verifyAuthCodePath = '$path/verify/code';

  /// 이메일 중복 검사
  late final checkEmailDuplicatePath = '$path/check/duplicate';

  /// 회원가입
  late final signUpPath = '$path/signup';

  /// 아이디찾기
  late final findIdPath = '$path/find-id';

  /// 로그인 API
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  });

  /// 인증번호 요청 API
  FutureOr<ApiResponse<SendAuthCodeResponseDto>> sendAuthCode({
    required String phone,
  });

  /// 인증번호 검증 API
  FutureOr<ApiResponse<BaseResponseDto<bool>>> verifyAuthCode({
    required AuthCodeVerificationRequestDto dto,
  });

  /// 이메일 중복 검사 API
  FutureOr<ApiResponse<BaseResponseDto<bool>>> checkEmailDuplicate({
    required String email,
  });

  /// 회원가입 API
  FutureOr<ApiResponse<SignUpResponseDto>> signUp({
    required SignUpRequestDto dto,
  });

  /// 아이디찾기 API
  FutureOr<ApiResponse<FindIdResponseDto>> findId({
    required FindIdRequestDto dto,
  });
}
