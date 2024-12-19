import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/gen/colors.gen.dart';

class GenderSelect extends StatelessWidget {
  final GenderType selectedType;

  const GenderSelect({
    super.key,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: GenderType.valuesWithoutNone
          .map(
            (gender) => Expanded(
              child: GenderOption(
                key: super.key?.makeChildKey('$gender'),
                gender: gender,
                isSelected: selectedType == gender,
              ),
            ),
          )
          .toList(),
    );
  }
}

class GenderOption extends StatelessWidget {
  final GenderType gender;

  final bool isSelected;

  const GenderOption({
    super.key,
    required this.gender,
    required this.isSelected,
  });

  Color get textColor => isSelected ? ColorName.primary : ColorName.secondary;

  Border get defaultBorder => const Border(
        bottom: BorderSide(
          color: ColorName.teritary,
          width: 1,
        ),
      );

  Border get selectedBorder => const Border(
        bottom: BorderSide(
          color: ColorName.primary,
          width: 3,
        ),
      );

  Border get border => isSelected ? selectedBorder : defaultBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: super.key?.makeChildKey('tap'),
      onTap: () {
        context.read<SignUpBloc>().add(SignUpGenderSelected(gender: gender));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
          border: border,
        ),
        child: Text(
          gender.tr,
          style: context.textTheme.bodyMediumBold?.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
