import 'package:mix/mix.dart';

enum DsButtonType {
  primary,
  secondary,
  global;

  Variant get variant {
    switch (this) {
      case secondary: return Variant('ds_button_secondary');
      case global: return Variant('ds_button_global');
      default: return Variant('ds_button_primary');
    }
  }
}

