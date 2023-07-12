import 'package:mix/mix.dart';

enum DsState {
  regular,
  loading,
  error,
  empty,
  disabled,
  expanded;

  Variant get variant {
    switch (this) {
      case loading: return Variant('ds_loading');
      case error: return Variant('ds_error');
      case empty: return Variant('ds_empty');
      case disabled: return Variant('ds_disabled');
      case expanded: return Variant('ds_expanded');
      default: return Variant('ds_regular');
    }
  }
}