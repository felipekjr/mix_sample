import 'package:mix/mix.dart';

enum DsCardType {
  regular,
  inverse;

  Variant get variant {
    switch (this) {
      case DsCardType.inverse: return Variant('ds_card_inverse');
      default: return Variant('ds_card_regular');
    }
  }
}