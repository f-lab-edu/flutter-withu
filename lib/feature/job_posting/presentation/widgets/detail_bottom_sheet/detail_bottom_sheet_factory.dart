import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/feature.dart';
import 'package:withu_app/shared/bottom_sheet/bottom_sheet.dart';

/// 공고 상세보기 바텀 시트 Factory
class DetailBottomSheetFactory {
  static final Map<DetailBottomSheetType, DescriptionBottomSheetOption>
      _options = {
    DetailBottomSheetType.update: _UpdateBottomSheet(),
    DetailBottomSheetType.delete: _DeleteBottomSheet(),
    DetailBottomSheetType.close: _CloseBottomSheet(),
  };

  static DescriptionBottomSheetOption? getOption(
    DetailBottomSheetType type,
  ) {
    return _options[type];
  }
}

/// 공고 수정
class _UpdateBottomSheet implements DescriptionBottomSheetOption {
  @override
  String get actionText => StringRes.update.tr;

  @override
  String get description => StringRes.isNotDeadlineYetConfirmClose.tr;

  @override
  Function(Bloc? bloc) get exec => (Bloc? bloc) {};
}

/// 공고 삭제
class _DeleteBottomSheet implements DescriptionBottomSheetOption {
  @override
  String get actionText => StringRes.delete.tr;

  @override
  String get description => StringRes.canRevertFromPostingManagement.tr;

  @override
  Function(Bloc? bloc) get exec => (Bloc? bloc) {};
}

/// 공고 마감
class _CloseBottomSheet implements DescriptionBottomSheetOption {
  @override
  String get actionText => StringRes.close.tr;

  @override
  String get description => StringRes.isNotDeadlineYetConfirmClose.tr;

  @override
  Function(Bloc? bloc) get exec => (Bloc? bloc) {
        if (bloc is JobPostingDetailBloc) {
          bloc.add(OnClosedJobPosting());
        }
      };
}
