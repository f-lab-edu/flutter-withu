enum VisibleType {
  none,
  visible,
  invisible;
}

extension VisibleTypeExt on VisibleType {
  bool get isVisible => this == VisibleType.visible;

  bool get isInvisible => this == VisibleType.invisible;

  /// Boolean -> 노출 여부
  static VisibleType fromBool(bool isVisible) {
    return isVisible ? VisibleType.visible : VisibleType.invisible;
  }
}
