part of 'job_posting_detail_bloc.dart';

sealed class JobPostingDetailEvent {}

/// 상세 데이터 조회
class OnGettingDetailData extends JobPostingDetailEvent {
  final String id;

  OnGettingDetailData({required this.id});
}

/// 메시지 초기화
class ClearMessage extends JobPostingDetailEvent {}

/// 공고 마감
class OnClosedJobPosting extends JobPostingDetailEvent {}

/// 공고 삭제
class OnDeletedJobPosting extends JobPostingDetailEvent {}

/// 수정 클릭 이벤트
class OnPressedUpdate extends JobPostingDetailEvent {}

/// 수정화면에서 돌아왔을 때
class OnPopForm extends JobPostingDetailEvent {}
