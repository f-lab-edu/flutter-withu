part of 'job_posting_bloc.dart';

sealed class JobPostingState {}

/// 초기화 상태.
class InitState extends JobPostingState {}

/// 로딩 상태.
class LoadingState extends JobPostingState {}
