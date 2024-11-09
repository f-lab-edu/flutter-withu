import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/feature.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 공고 등록/수정 화면
@RoutePage()
class JobPostingFormPage extends StatelessWidget {
  final String? jobPostingId;

  const JobPostingFormPage({
    super.key,
    this.jobPostingId,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobPostingFormBloc>(
          create: (context) => getIt()
            ..add(JobPostingFormIdSet(id: jobPostingId))
            ..add(JobPostingFormDetailFetched()),
        ),
      ],
      child: BlocListener<JobPostingFormBloc, JobPostingFormState>(
        listener: (context, state) {
          if (state.status.isSuccess) {
            // result: 수정 여부
            context.router.maybePop(true);
          }
        },
        child: _JobPostingFormPage(),
      ),
    );
  }
}

class _JobPostingFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return PageRoot(
          isLoading: state.status.isLoading,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          appBar: CustomAppBar.back(
            context: context,
          ),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _JobPostingTitle(),
                const SizedBox(height: 30),
                _FieldName(text: StringRes.workDetail.tr),
                const SizedBox(height: 8),
                _JobPostingContent(),
                const SizedBox(height: 30),
                _FieldName(text: StringRes.selectCategory.tr),
                const SizedBox(height: 15),
                _CategorySelect(),
                const SizedBox(height: 30),
                _ContractType(),
                const SizedBox(height: 30),
                _ContractStartDate(),
                _ContractStartCalendar(),
                const SizedBox(height: 30),
                _ContractEndDate(),
                _ContractEndCalendar(),
                const SizedBox(height: 30),
                _WorkHoursField(),
                _WorkHoursTimePicker(),
                const SizedBox(height: 30),
                _Participants(),
                const SizedBox(height: 30),
                _FieldName(text: StringRes.payMethod.tr),
                const SizedBox(height: 15),
                _PayType(),
                const SizedBox(height: 30),
                _FieldName(text: StringRes.address.tr),
                _Address(),
                const SizedBox(height: 30),
                _FieldName(text: StringRes.preferences.tr),
                _PreferredQualification(),
                const SizedBox(height: 30),
                _TravelTimeField(),
                _TravelTimePaid(),
                const SizedBox(height: 30),
                _BreakTimeField(),
                _BreakTimePaid(),
                const SizedBox(height: 30),
                _MealPaidField(),
                const SizedBox(height: 40),
                _SubmitButton(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// 필드명.
class _FieldName extends StatelessWidget {
  final String text;

  const _FieldName({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodyMediumBold,
    );
  }
}

/// 공고 제목
class _JobPostingTitle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JobPostingTitleState();
}

class _JobPostingTitleState extends State<_JobPostingTitle> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobPostingFormBloc, JobPostingFormState>(
      listener: (context, state) {
        if (_controller.text != state.title) {
          _controller.text = state.title;
        }
      },
      child: BaseInput(
        controller: _controller,
        style: context.textTheme.headlineSmall,
        hintText: StringRes.enterTitle.tr,
        hintTextStyle: context.textTheme.headlineSmall,
        padding: const EdgeInsets.all(12),
        onChanged: (String text) {
          context.read<JobPostingFormBloc>().add(OnChangedTitle(title: text));
        },
      ),
    );
  }
}

/// 근로 내용
class _JobPostingContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JobPostingContentState();
}

class _JobPostingContentState extends State<_JobPostingContent> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobPostingFormBloc, JobPostingFormState>(
      listener: (context, state) {
        if (_controller.text != state.content) {
          _controller.text = state.content;
        }
      },
      child: BaseInput(
        controller: _controller,
        style: context.textTheme.headlineSmall,
        hintText: StringRes.enterDescriptionOfJobPosting.tr,
        hintTextStyle: context.textTheme.bodyMedium,
        onChanged: (String text) {
          context
              .read<JobPostingFormBloc>()
              .add(OnChangedContent(content: text));
        },
      ),
    );
  }
}

/// 카테고리 선택
class _CategorySelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Row(
          children: JobCategoryType.values
              .map(
                (category) => RadioChip(
                  text: category.tr,
                  isSelected: category == state.category,
                  onSelected: () {
                    context
                        .read<JobPostingFormBloc>()
                        .add(OnPressedJobCategory(category: category));
                  },
                  margin: const EdgeInsets.only(right: 13),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

/// 기간 형식
class _ContractType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
        builder: (context, state) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _FieldName(text: StringRes.periodFormat.tr),
          const Spacer(),
          ...ContractType.values.map(
            (type) => RadioChip(
              text: type.tr,
              isSelected: state.contractType == type,
              onSelected: () {
                context
                    .read<JobPostingFormBloc>()
                    .add(OnPressedContractType(contractType: type));
              },
              margin: const EdgeInsets.only(left: 16),
            ),
          ),
        ],
      );
    });
  }
}

/// 근로 계약 기간
class _ContractStartDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        final fieldName = state.contractType?.isLong == true
            ? StringRes.workContractStartPeriod.tr
            : StringRes.workContractPeriod.tr;
        return Row(
          children: [
            _FieldName(text: fieldName),
            const Spacer(),
            InkWell(
              onTap: () {
                context
                    .read<JobPostingFormBloc>()
                    .add(OnToggleStartCalendarVisible());
              },
              borderRadius: BorderRadius.circular(4),
              child: Row(
                children: [
                  Text(
                    state.contractStartDateStr,
                    style: context.textTheme.bodyLarge,
                  ),
                  const SizedBox(width: 13),
                  const Icon(Icons.calendar_month_outlined),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

/// 계약 시작 달력
class _ContractStartCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
        builder: (context, state) {
      return Visibility(
        visible: state.isVisibleStartCalendar,
        child: Container(
          margin: const EdgeInsets.only(top: 14),
          padding: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorName.teritary,
          ),
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              currentDate: DateTime.now(),
              calendarViewMode: CalendarDatePicker2Mode.day,
              nextMonthIcon: const SizedBox(),
              lastMonthIcon: const SizedBox(),
              centerAlignModePicker: false,
              disableMonthPicker: true,
              weekdayLabelTextStyle: context.textTheme.bodyMedium,
              dayTextStyle: context.textTheme.bodyMedium,
              controlsTextStyle: context.textTheme.headlineLarge,
              selectedDayTextStyle: context.textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
              selectedDayHighlightColor: ColorName.primary,
            ),
            value: [state.contractStartDate],
            onValueChanged: (dates) {
              context
                  .read<JobPostingFormBloc>()
                  .add(OnChangedContractStartDate(contractStartDate: dates[0]));
            },
          ),
        ),
      );
    });
  }
}

/// 계약 종료 날짜
class _ContractEndDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Visibility(
          visible: state.contractType?.isLong == true,
          child: Row(
            children: [
              _FieldName(text: StringRes.workContractEndPeriod.tr),
              const Spacer(),
              InkWell(
                onTap: () {
                  context
                      .read<JobPostingFormBloc>()
                      .add(OnToggleEndCalendarVisible());
                },
                borderRadius: BorderRadius.circular(4),
                child: Row(
                  children: [
                    Text(
                      state.contractEndDateStr,
                      style: context.textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 13),
                    const Icon(Icons.calendar_month_outlined),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

/// 계약 종료 달력
class _ContractEndCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
        builder: (context, state) {
      return Visibility(
        visible:
            state.contractType?.isLong == true && state.isVisibleEndCalendar,
        child: Container(
          margin: const EdgeInsets.only(top: 14),
          padding: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorName.teritary,
          ),
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              currentDate: DateTime.now(),
              calendarViewMode: CalendarDatePicker2Mode.day,
              nextMonthIcon: const SizedBox(),
              lastMonthIcon: const SizedBox(),
              centerAlignModePicker: false,
              disableMonthPicker: true,
              weekdayLabelTextStyle: context.textTheme.bodyMedium,
              dayTextStyle: context.textTheme.bodyMedium,
              controlsTextStyle: context.textTheme.headlineLarge,
              selectedDayTextStyle: context.textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
              selectedDayHighlightColor: ColorName.primary,
            ),
            value: [state.contractEndDate],
            onValueChanged: (dates) {
              context
                  .read<JobPostingFormBloc>()
                  .add(OnChangedContractEndDate(contractEndDate: dates[0]));
            },
          ),
        ),
      );
    });
  }
}

/// 근무 시간 필드명
class _WorkHoursField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _FieldName(text: StringRes.workHours.tr),
            const Spacer(),
            Text(
              StringRes.tbc.tr,
              style: context.textTheme.bodyLarge,
            ),
            const SizedBox(width: 10),
            BaseSwitch(
              isOn: state.isTBC,
              onTap: () {
                context.read<JobPostingFormBloc>().add(OnToggleTBC());
              },
            ),
          ],
        );
      },
    );
  }
}

/// 근무시간 피커
class _WorkHoursTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Visibility(
          visible: !state.isTBC,
          child: Container(
            height: 86,
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Expanded(
                  child: TimePicker(
                    onDateTimeChanged: (DateTime time) {
                      context
                          .read<JobPostingFormBloc>()
                          .add(OnChangedWorkStartTime(time: time));
                    },
                  ),
                ),
                Text(
                  '-',
                  style: context.textTheme.bodyMediumBold,
                ),
                Expanded(
                  child: TimePicker(
                    onDateTimeChanged: (DateTime time) {
                      context
                          .read<JobPostingFormBloc>()
                          .add(OnChangedWorkEndTime(time: time));
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// 모집인원
class _Participants extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParticipantsState();
}

class _ParticipantsState extends State<_Participants> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobPostingFormBloc, JobPostingFormState>(
      listener: (context, state) {
        final participants = state.participants.toString();
        if (_controller.text != participants) {
          _controller.text = participants;
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _FieldName(text: StringRes.numberOfPeopleRecruited.tr),
          const Spacer(),
          BaseInput(
            width: 80,
            controller: _controller,
            style: context.textTheme.bodyLarge,
            hintText: '0',
            hintTextStyle: context.textTheme.bodyLarge,
            suffixText: StringRes.numberOfPeopleUnit.tr,
            suffixStyle: context.textTheme.bodyLarge,
            keyboardType: TextInputType.number,
            maxLength: 3,
            textAlign: TextAlign.end,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (String text) {
              context
                  .read<JobPostingFormBloc>()
                  .add(OnChangedParticipants(participants: text));
            },
          ),
        ],
      ),
    );
  }
}

/// 급여 방법
class _PayType extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PayTypeState();
}

class _PayTypeState extends State<_PayType> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobPostingFormBloc, JobPostingFormState>(
      listener: (context, state) {
        if (_controller.text != state.pay) {
          _controller.text = state.pay;
        }
      },
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...PayType.values.map(
              (type) => RadioChip(
                text: type.tr,
                isSelected: type == state.payType,
                margin: const EdgeInsets.only(right: 13),
                onSelected: () {
                  context
                      .read<JobPostingFormBloc>()
                      .add(OnSelectedPayType(payType: type));
                },
              ),
            ),
            const Spacer(),
            BaseInput(
              width: 80,
              controller: _controller,
              style: context.textTheme.bodyLarge,
              hintText: '0',
              hintTextStyle: context.textTheme.bodyLarge,
              suffixText: StringRes.wonUnit.tr,
              suffixStyle: context.textTheme.bodyLarge,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.end,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: (String text) {
                context.read<JobPostingFormBloc>().add(OnChangedPay(pay: text));
              },
            ),
          ],
        );
      },
    );
  }
}

/// 주소 입력
class _Address extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddressState();
}

class _AddressState extends State<_Address> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobPostingFormBloc, JobPostingFormState>(
      listener: (context, state) {
        if (_controller.text != state.address) {
          _controller.text = state.address;
        }
      },
      child: LinedTextFormField(
        controller: _controller,
        readOnly: true,
        suffix: TextButton(
          onPressed: () {
            context.read<JobPostingFormBloc>().add(OnPressedFindAddress());
          },
          child: Text(
            StringRes.findAddress.tr,
            style: context.textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}

/// 우대사항
class _PreferredQualification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PreferredQualificationState();
}

class _PreferredQualificationState extends State<_PreferredQualification> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobPostingFormBloc, JobPostingFormState>(
      listener: (context, state) {
        if (_controller.text != state.preferredQualifications) {
          _controller.text = state.preferredQualifications;
        }
      },
      child: LinedTextFormField(
        controller: _controller,
        onChanged: (String text) {
          context
              .read<JobPostingFormBloc>()
              .add(OnChangedPreferredQualifications(text: text));
        },
      ),
    );
  }
}

/// 이동시간 필드
class _TravelTimeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _FieldName(text: StringRes.travelTimeOrNot.tr),
            const Spacer(),
            BaseSwitch(
              isOn: state.hasTravelTime,
              onTap: () {
                context.read<JobPostingFormBloc>().add(OnToggleHasTravelTime());
              },
            ),
          ],
        );
      },
    );
  }
}

/// 이동시간 필드
class _TravelTimePaid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Visibility(
          visible: state.hasTravelTime,
          child: Container(
            margin: const EdgeInsets.only(top: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RadioChip(
                  text: StringRes.wage.tr,
                  isSelected: state.isTravelTimePaid == true,
                  onSelected: () {
                    context
                        .read<JobPostingFormBloc>()
                        .add(OnSelectTravelTimePaid(isPaid: true));
                  },
                ),
                const SizedBox(width: 13),
                RadioChip(
                  text: StringRes.nonWage.tr,
                  isSelected: state.isTravelTimePaid == false,
                  onSelected: () {
                    context
                        .read<JobPostingFormBloc>()
                        .add(OnSelectTravelTimePaid(isPaid: false));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// 휴게시간 필드
class _BreakTimeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _FieldName(text: StringRes.breakTimeOrNot.tr),
            const Spacer(),
            BaseSwitch(
              isOn: state.hasBreakTime,
              onTap: () {
                context.read<JobPostingFormBloc>().add(OnToggleHasBreakTime());
              },
            ),
          ],
        );
      },
    );
  }
}

/// 휴게시간 필드
class _BreakTimePaid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Visibility(
          visible: state.hasBreakTime,
          child: Container(
            margin: const EdgeInsets.only(top: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RadioChip(
                  text: StringRes.wage.tr,
                  isSelected: state.isBreakTimePaid == true,
                  onSelected: () {
                    context
                        .read<JobPostingFormBloc>()
                        .add(OnSelectBreakTimePaid(isPaid: true));
                  },
                ),
                const SizedBox(width: 13),
                RadioChip(
                  text: StringRes.nonWage.tr,
                  isSelected: state.isBreakTimePaid == false,
                  onSelected: () {
                    context
                        .read<JobPostingFormBloc>()
                        .add(OnSelectBreakTimePaid(isPaid: false));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// 휴게시간 필드
class _MealPaidField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _FieldName(text: StringRes.mealPaidOrNot.tr),
            const Spacer(),
            BaseSwitch(
              isOn: state.isMealProvided,
              onTap: () {
                context.read<JobPostingFormBloc>().add(OnToggleHasMealPaid());
              },
            ),
          ],
        );
      },
    );
  }
}

/// 등록하기 버튼
class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingFormBloc, JobPostingFormState>(
      builder: (context, state) {
        final String text = state.isRegistration
            ? StringRes.registration.tr
            : StringRes.update.tr;

        return InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            context.read<JobPostingFormBloc>().add(JobPostingFormSubmitted());
          },
          child: Container(
            width: double.infinity,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorName.primary80,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              text,
              style: context.textTheme.bodyMediumBold?.copyWith(
                color: ColorName.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
