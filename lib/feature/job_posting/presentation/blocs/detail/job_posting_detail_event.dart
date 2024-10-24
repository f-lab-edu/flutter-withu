part of 'job_posting_detail_bloc.dart';

sealed class JobPostingDetailEvent {}

/// 상세 데이터 조회
class OnGettingDetailData extends JobPostingDetailEvent {
  final String id;

  OnGettingDetailData({required this.id});
}

/// 메시지 초기화
class ClearMessage extends JobPostingDetailEvent {}
