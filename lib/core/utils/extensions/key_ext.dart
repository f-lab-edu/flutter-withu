import 'package:flutter/material.dart';

extension KeyExt on Key {
  Key makeChildKey(String childKey) {
    return Key('${(this as ValueKey).value}_$childKey');
  }
}
