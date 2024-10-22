import 'package:flutter_bloc/flutter_bloc.dart';

/// BottomSheet에서 필요한 값
abstract class DescriptionBottomSheetOption {
  /// 설명
  final String description;

  /// 버튼 문구
  final String actionText;

  /// 버튼 클릭 시 실행될 동작
  final Function(Bloc? bloc) exec;

  DescriptionBottomSheetOption({
    required this.description,
    required this.actionText,
    required this.exec,
  });
}
