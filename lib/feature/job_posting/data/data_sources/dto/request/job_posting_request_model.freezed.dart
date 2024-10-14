// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_posting_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPostingRequestModel _$JobPostingRequestModelFromJson(
    Map<String, dynamic> json) {
  return _JobPostingRequestModel.fromJson(json);
}

/// @nodoc
mixin _$JobPostingRequestModel {
  String get companyId => throw _privateConstructorUsedError; // 회사 ID
  String get title => throw _privateConstructorUsedError; // 공고명
  String get content => throw _privateConstructorUsedError; // 근로 내용
  String get specialtyField => throw _privateConstructorUsedError; // 카테고리
  String get contractType =>
      throw _privateConstructorUsedError; // 계약 타입: 단기, 장기
  DateTime get contractStartDate =>
      throw _privateConstructorUsedError; // 근로 시작 날
  DateTime get contractEndDate =>
      throw _privateConstructorUsedError; // 근로 종료 날짜
  bool get isTimeUndecided => throw _privateConstructorUsedError; // 시간 미정 여부
  PayType get payType => throw _privateConstructorUsedError; // 급여 타입: 시급, 일급
  int get payAmount => throw _privateConstructorUsedError; // 금액
  String get workAddress => throw _privateConstructorUsedError; // 근무지 주소
  double get latitude => throw _privateConstructorUsedError; // 근무지 위도
  double get longitude => throw _privateConstructorUsedError; // 근무지 경도
  int get participants => throw _privateConstructorUsedError; // 모집인원
  bool get hasTravelTime => throw _privateConstructorUsedError; // 이동시간 유무
  bool get isTravelTimePaid =>
      throw _privateConstructorUsedError; // 이동시간 급여/비급여
  bool get hasBreakTime => throw _privateConstructorUsedError; // 휴게시간 여부
  bool get isBreakTimePaid => throw _privateConstructorUsedError; // 휴게시간 급여/비급여
  bool get isMealProvided => throw _privateConstructorUsedError; // 식사유무
  bool get isUrgent => throw _privateConstructorUsedError; // 급구 여부
  String? get preferredQualifications =>
      throw _privateConstructorUsedError; // 우대사항
  DateTime? get workStartTime => throw _privateConstructorUsedError; // 근무 시작 시간
  DateTime? get workEndTime => throw _privateConstructorUsedError;

  /// Serializes this JobPostingRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingRequestModelCopyWith<JobPostingRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingRequestModelCopyWith<$Res> {
  factory $JobPostingRequestModelCopyWith(JobPostingRequestModel value,
          $Res Function(JobPostingRequestModel) then) =
      _$JobPostingRequestModelCopyWithImpl<$Res, JobPostingRequestModel>;
  @useResult
  $Res call(
      {String companyId,
      String title,
      String content,
      String specialtyField,
      String contractType,
      DateTime contractStartDate,
      DateTime contractEndDate,
      bool isTimeUndecided,
      PayType payType,
      int payAmount,
      String workAddress,
      double latitude,
      double longitude,
      int participants,
      bool hasTravelTime,
      bool isTravelTimePaid,
      bool hasBreakTime,
      bool isBreakTimePaid,
      bool isMealProvided,
      bool isUrgent,
      String? preferredQualifications,
      DateTime? workStartTime,
      DateTime? workEndTime});
}

/// @nodoc
class _$JobPostingRequestModelCopyWithImpl<$Res,
        $Val extends JobPostingRequestModel>
    implements $JobPostingRequestModelCopyWith<$Res> {
  _$JobPostingRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? title = null,
    Object? content = null,
    Object? specialtyField = null,
    Object? contractType = null,
    Object? contractStartDate = null,
    Object? contractEndDate = null,
    Object? isTimeUndecided = null,
    Object? payType = null,
    Object? payAmount = null,
    Object? workAddress = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? participants = null,
    Object? hasTravelTime = null,
    Object? isTravelTimePaid = null,
    Object? hasBreakTime = null,
    Object? isBreakTimePaid = null,
    Object? isMealProvided = null,
    Object? isUrgent = null,
    Object? preferredQualifications = freezed,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      specialtyField: null == specialtyField
          ? _value.specialtyField
          : specialtyField // ignore: cast_nullable_to_non_nullable
              as String,
      contractType: null == contractType
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      contractStartDate: null == contractStartDate
          ? _value.contractStartDate
          : contractStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contractEndDate: null == contractEndDate
          ? _value.contractEndDate
          : contractEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTimeUndecided: null == isTimeUndecided
          ? _value.isTimeUndecided
          : isTimeUndecided // ignore: cast_nullable_to_non_nullable
              as bool,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as PayType,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as int,
      workAddress: null == workAddress
          ? _value.workAddress
          : workAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      hasTravelTime: null == hasTravelTime
          ? _value.hasTravelTime
          : hasTravelTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isTravelTimePaid: null == isTravelTimePaid
          ? _value.isTravelTimePaid
          : isTravelTimePaid // ignore: cast_nullable_to_non_nullable
              as bool,
      hasBreakTime: null == hasBreakTime
          ? _value.hasBreakTime
          : hasBreakTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isBreakTimePaid: null == isBreakTimePaid
          ? _value.isBreakTimePaid
          : isBreakTimePaid // ignore: cast_nullable_to_non_nullable
              as bool,
      isMealProvided: null == isMealProvided
          ? _value.isMealProvided
          : isMealProvided // ignore: cast_nullable_to_non_nullable
              as bool,
      isUrgent: null == isUrgent
          ? _value.isUrgent
          : isUrgent // ignore: cast_nullable_to_non_nullable
              as bool,
      preferredQualifications: freezed == preferredQualifications
          ? _value.preferredQualifications
          : preferredQualifications // ignore: cast_nullable_to_non_nullable
              as String?,
      workStartTime: freezed == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workEndTime: freezed == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingRequestModelImplCopyWith<$Res>
    implements $JobPostingRequestModelCopyWith<$Res> {
  factory _$$JobPostingRequestModelImplCopyWith(
          _$JobPostingRequestModelImpl value,
          $Res Function(_$JobPostingRequestModelImpl) then) =
      __$$JobPostingRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String companyId,
      String title,
      String content,
      String specialtyField,
      String contractType,
      DateTime contractStartDate,
      DateTime contractEndDate,
      bool isTimeUndecided,
      PayType payType,
      int payAmount,
      String workAddress,
      double latitude,
      double longitude,
      int participants,
      bool hasTravelTime,
      bool isTravelTimePaid,
      bool hasBreakTime,
      bool isBreakTimePaid,
      bool isMealProvided,
      bool isUrgent,
      String? preferredQualifications,
      DateTime? workStartTime,
      DateTime? workEndTime});
}

/// @nodoc
class __$$JobPostingRequestModelImplCopyWithImpl<$Res>
    extends _$JobPostingRequestModelCopyWithImpl<$Res,
        _$JobPostingRequestModelImpl>
    implements _$$JobPostingRequestModelImplCopyWith<$Res> {
  __$$JobPostingRequestModelImplCopyWithImpl(
      _$JobPostingRequestModelImpl _value,
      $Res Function(_$JobPostingRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? title = null,
    Object? content = null,
    Object? specialtyField = null,
    Object? contractType = null,
    Object? contractStartDate = null,
    Object? contractEndDate = null,
    Object? isTimeUndecided = null,
    Object? payType = null,
    Object? payAmount = null,
    Object? workAddress = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? participants = null,
    Object? hasTravelTime = null,
    Object? isTravelTimePaid = null,
    Object? hasBreakTime = null,
    Object? isBreakTimePaid = null,
    Object? isMealProvided = null,
    Object? isUrgent = null,
    Object? preferredQualifications = freezed,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
  }) {
    return _then(_$JobPostingRequestModelImpl(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      specialtyField: null == specialtyField
          ? _value.specialtyField
          : specialtyField // ignore: cast_nullable_to_non_nullable
              as String,
      contractType: null == contractType
          ? _value.contractType
          : contractType // ignore: cast_nullable_to_non_nullable
              as String,
      contractStartDate: null == contractStartDate
          ? _value.contractStartDate
          : contractStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contractEndDate: null == contractEndDate
          ? _value.contractEndDate
          : contractEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isTimeUndecided: null == isTimeUndecided
          ? _value.isTimeUndecided
          : isTimeUndecided // ignore: cast_nullable_to_non_nullable
              as bool,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as PayType,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as int,
      workAddress: null == workAddress
          ? _value.workAddress
          : workAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int,
      hasTravelTime: null == hasTravelTime
          ? _value.hasTravelTime
          : hasTravelTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isTravelTimePaid: null == isTravelTimePaid
          ? _value.isTravelTimePaid
          : isTravelTimePaid // ignore: cast_nullable_to_non_nullable
              as bool,
      hasBreakTime: null == hasBreakTime
          ? _value.hasBreakTime
          : hasBreakTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isBreakTimePaid: null == isBreakTimePaid
          ? _value.isBreakTimePaid
          : isBreakTimePaid // ignore: cast_nullable_to_non_nullable
              as bool,
      isMealProvided: null == isMealProvided
          ? _value.isMealProvided
          : isMealProvided // ignore: cast_nullable_to_non_nullable
              as bool,
      isUrgent: null == isUrgent
          ? _value.isUrgent
          : isUrgent // ignore: cast_nullable_to_non_nullable
              as bool,
      preferredQualifications: freezed == preferredQualifications
          ? _value.preferredQualifications
          : preferredQualifications // ignore: cast_nullable_to_non_nullable
              as String?,
      workStartTime: freezed == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workEndTime: freezed == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingRequestModelImpl implements _JobPostingRequestModel {
  const _$JobPostingRequestModelImpl(
      {required this.companyId,
      required this.title,
      required this.content,
      required this.specialtyField,
      required this.contractType,
      required this.contractStartDate,
      required this.contractEndDate,
      required this.isTimeUndecided,
      required this.payType,
      required this.payAmount,
      required this.workAddress,
      required this.latitude,
      required this.longitude,
      required this.participants,
      required this.hasTravelTime,
      required this.isTravelTimePaid,
      required this.hasBreakTime,
      required this.isBreakTimePaid,
      required this.isMealProvided,
      required this.isUrgent,
      this.preferredQualifications,
      this.workStartTime,
      this.workEndTime});

  factory _$JobPostingRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingRequestModelImplFromJson(json);

  @override
  final String companyId;
// 회사 ID
  @override
  final String title;
// 공고명
  @override
  final String content;
// 근로 내용
  @override
  final String specialtyField;
// 카테고리
  @override
  final String contractType;
// 계약 타입: 단기, 장기
  @override
  final DateTime contractStartDate;
// 근로 시작 날
  @override
  final DateTime contractEndDate;
// 근로 종료 날짜
  @override
  final bool isTimeUndecided;
// 시간 미정 여부
  @override
  final PayType payType;
// 급여 타입: 시급, 일급
  @override
  final int payAmount;
// 금액
  @override
  final String workAddress;
// 근무지 주소
  @override
  final double latitude;
// 근무지 위도
  @override
  final double longitude;
// 근무지 경도
  @override
  final int participants;
// 모집인원
  @override
  final bool hasTravelTime;
// 이동시간 유무
  @override
  final bool isTravelTimePaid;
// 이동시간 급여/비급여
  @override
  final bool hasBreakTime;
// 휴게시간 여부
  @override
  final bool isBreakTimePaid;
// 휴게시간 급여/비급여
  @override
  final bool isMealProvided;
// 식사유무
  @override
  final bool isUrgent;
// 급구 여부
  @override
  final String? preferredQualifications;
// 우대사항
  @override
  final DateTime? workStartTime;
// 근무 시작 시간
  @override
  final DateTime? workEndTime;

  @override
  String toString() {
    return 'JobPostingRequestModel(companyId: $companyId, title: $title, content: $content, specialtyField: $specialtyField, contractType: $contractType, contractStartDate: $contractStartDate, contractEndDate: $contractEndDate, isTimeUndecided: $isTimeUndecided, payType: $payType, payAmount: $payAmount, workAddress: $workAddress, latitude: $latitude, longitude: $longitude, participants: $participants, hasTravelTime: $hasTravelTime, isTravelTimePaid: $isTravelTimePaid, hasBreakTime: $hasBreakTime, isBreakTimePaid: $isBreakTimePaid, isMealProvided: $isMealProvided, isUrgent: $isUrgent, preferredQualifications: $preferredQualifications, workStartTime: $workStartTime, workEndTime: $workEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingRequestModelImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.specialtyField, specialtyField) ||
                other.specialtyField == specialtyField) &&
            (identical(other.contractType, contractType) ||
                other.contractType == contractType) &&
            (identical(other.contractStartDate, contractStartDate) ||
                other.contractStartDate == contractStartDate) &&
            (identical(other.contractEndDate, contractEndDate) ||
                other.contractEndDate == contractEndDate) &&
            (identical(other.isTimeUndecided, isTimeUndecided) ||
                other.isTimeUndecided == isTimeUndecided) &&
            (identical(other.payType, payType) || other.payType == payType) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.workAddress, workAddress) ||
                other.workAddress == workAddress) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.hasTravelTime, hasTravelTime) ||
                other.hasTravelTime == hasTravelTime) &&
            (identical(other.isTravelTimePaid, isTravelTimePaid) ||
                other.isTravelTimePaid == isTravelTimePaid) &&
            (identical(other.hasBreakTime, hasBreakTime) ||
                other.hasBreakTime == hasBreakTime) &&
            (identical(other.isBreakTimePaid, isBreakTimePaid) ||
                other.isBreakTimePaid == isBreakTimePaid) &&
            (identical(other.isMealProvided, isMealProvided) ||
                other.isMealProvided == isMealProvided) &&
            (identical(other.isUrgent, isUrgent) ||
                other.isUrgent == isUrgent) &&
            (identical(
                    other.preferredQualifications, preferredQualifications) ||
                other.preferredQualifications == preferredQualifications) &&
            (identical(other.workStartTime, workStartTime) ||
                other.workStartTime == workStartTime) &&
            (identical(other.workEndTime, workEndTime) ||
                other.workEndTime == workEndTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        companyId,
        title,
        content,
        specialtyField,
        contractType,
        contractStartDate,
        contractEndDate,
        isTimeUndecided,
        payType,
        payAmount,
        workAddress,
        latitude,
        longitude,
        participants,
        hasTravelTime,
        isTravelTimePaid,
        hasBreakTime,
        isBreakTimePaid,
        isMealProvided,
        isUrgent,
        preferredQualifications,
        workStartTime,
        workEndTime
      ]);

  /// Create a copy of JobPostingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingRequestModelImplCopyWith<_$JobPostingRequestModelImpl>
      get copyWith => __$$JobPostingRequestModelImplCopyWithImpl<
          _$JobPostingRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingRequestModelImplToJson(
      this,
    );
  }
}

abstract class _JobPostingRequestModel implements JobPostingRequestModel {
  const factory _JobPostingRequestModel(
      {required final String companyId,
      required final String title,
      required final String content,
      required final String specialtyField,
      required final String contractType,
      required final DateTime contractStartDate,
      required final DateTime contractEndDate,
      required final bool isTimeUndecided,
      required final PayType payType,
      required final int payAmount,
      required final String workAddress,
      required final double latitude,
      required final double longitude,
      required final int participants,
      required final bool hasTravelTime,
      required final bool isTravelTimePaid,
      required final bool hasBreakTime,
      required final bool isBreakTimePaid,
      required final bool isMealProvided,
      required final bool isUrgent,
      final String? preferredQualifications,
      final DateTime? workStartTime,
      final DateTime? workEndTime}) = _$JobPostingRequestModelImpl;

  factory _JobPostingRequestModel.fromJson(Map<String, dynamic> json) =
      _$JobPostingRequestModelImpl.fromJson;

  @override
  String get companyId; // 회사 ID
  @override
  String get title; // 공고명
  @override
  String get content; // 근로 내용
  @override
  String get specialtyField; // 카테고리
  @override
  String get contractType; // 계약 타입: 단기, 장기
  @override
  DateTime get contractStartDate; // 근로 시작 날
  @override
  DateTime get contractEndDate; // 근로 종료 날짜
  @override
  bool get isTimeUndecided; // 시간 미정 여부
  @override
  PayType get payType; // 급여 타입: 시급, 일급
  @override
  int get payAmount; // 금액
  @override
  String get workAddress; // 근무지 주소
  @override
  double get latitude; // 근무지 위도
  @override
  double get longitude; // 근무지 경도
  @override
  int get participants; // 모집인원
  @override
  bool get hasTravelTime; // 이동시간 유무
  @override
  bool get isTravelTimePaid; // 이동시간 급여/비급여
  @override
  bool get hasBreakTime; // 휴게시간 여부
  @override
  bool get isBreakTimePaid; // 휴게시간 급여/비급여
  @override
  bool get isMealProvided; // 식사유무
  @override
  bool get isUrgent; // 급구 여부
  @override
  String? get preferredQualifications; // 우대사항
  @override
  DateTime? get workStartTime; // 근무 시작 시간
  @override
  DateTime? get workEndTime;

  /// Create a copy of JobPostingRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingRequestModelImplCopyWith<_$JobPostingRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
