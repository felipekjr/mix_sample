
import 'package:flutter/material.dart';

class DsCardProps {
  DsCardProps({
    this.child,
    this.inverse = false
  });

  // {@prop:name} type
  // {@prop:type} DsCardType
  // {@prop:required} false
  // {@prop:docs} Define the type of car
  final bool inverse;

  // {@prop:name} child
  // {@prop:type} Widget
  // {@prop:required} false
  // {@prop:docs} Define if button is disabled for taps
  final Widget? child;
}
