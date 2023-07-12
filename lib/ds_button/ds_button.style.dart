import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../ds_state.dart';
import 'ds_button.variant.dart';

final _secondary = DsButtonType.secondary.variant;
final _global = DsButtonType.global.variant;
final _disabled = DsState.disabled.variant;

class MdnButtonStyle {
  MdnButtonStyle();

  final mix = Mix(
    animated(),
    mt.md,
    mb.md,
    bgColor(Colors.blue),
    textColor(Colors.white),
    paddingVertical(10),
    paddingHorizontal(20),
    rounded(20),
    (hover)(
      scale(1.2),
    ),
    press(bgColor(Colors.pink)),
  );

  final variants = Mix(
    _secondary(
      border(width: 2, color: Colors.black),
      bgColor(Colors.transparent),
      textColor(Colors.black),
      press(
        bgColor(
          Colors.green,
        ),
      ),
    ),
    _global(
      bgColor(Colors.orangeAccent),
      textColor(Colors.black),
    ),
    _disabled(
      bgColor(Colors.grey),
      textColor(Colors.black),
    ),
  );
}
