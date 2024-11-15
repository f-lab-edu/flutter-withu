part of 'email_duplicate_check_bloc.dart';

abstract class EmailDuplicateCheckEvent extends BaseBlocEvent
    with EquatableMixin {}

class EmailDuplicateCheckInputted extends EmailDuplicateCheckEvent {
  final String value;

  EmailDuplicateCheckInputted({required this.value});

  Email get email => Email(value);

  @override
  List<Object?> get props => [value];
}
