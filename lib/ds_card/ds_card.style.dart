import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import 'ds_card.variants.dart';

final _inverse = DsCardType.inverse.variant;

class DsCardStyle {
  final mix = Mix(
    p.xl,
    mr.xl,
    shadow(blurRadius: 8.0, color: Colors.black, offset: const Offset(0, 4), spreadRadius: -4),
    rounded(20),
    align(Alignment.center),
    bgColor(Colors.white),
    textDecoration(TextDecoration.none),
    fontSize(18),
    minH(100),
    minW(100)
  );

  final variants = Mix(
    _inverse(
      bgColor(Colors.red),
      textColor(Colors.white)
    )
  );
}