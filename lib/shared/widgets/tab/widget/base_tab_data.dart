import 'package:equatable/equatable.dart';

/// BaseTab 에서 사용될 Data
class BaseTabData extends Equatable {
  final String text;

  const BaseTabData({required this.text});

  @override
  List<Object?> get props => [text];
}
