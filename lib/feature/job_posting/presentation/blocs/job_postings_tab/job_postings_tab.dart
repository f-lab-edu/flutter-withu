import 'package:withu_app/core/core.dart';
import 'package:withu_app/shared/shared.dart';

/// 상단 탭 Bloc
class JobPostingsTabBloc extends BaseTabBloc {
  JobPostingsTabBloc() : super(tabs: _getTabs());

  /// 탭 목록
  static List<BaseTabData<JobPostingStatusType>> _getTabs() {
    return JobPostingStatusType.values
        .map<BaseTabData<JobPostingStatusType>>(
          (type) => BaseTabData(
            text: type.displayName,
            value: type,
          ),
        )
        .toList();
  }
}
