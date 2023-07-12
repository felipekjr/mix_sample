import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:mix_sample/ds_card/ds_card.dart';

class DsCard extends StatelessWidget {
  DsCard({
    super.key,
    Widget? child,
    bool inverse = false,
  }) : props = DsCardProps(
          child: child,
          inverse: inverse,
        );

  final DsCardProps props;

  @override
  Widget build(BuildContext context) {
    final style = DsCardStyle();
    return Box(
      mix: style.mix.apply(style.variants).withMaybeVariant(
        props.inverse ? DsCardType.inverse.variant : null,
      ),
      child: props.child,
    );
  }
}
