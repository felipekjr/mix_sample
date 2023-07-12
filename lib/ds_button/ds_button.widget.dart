import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import '../ds_state.dart';
import 'ds_button.props.dart';
import 'ds_button.style.dart';
import 'ds_button.variant.dart';

class DsButton extends StatelessWidget {
  final DsButtonProps props;

  DsButton({
    super.key,
    required String label,
    required Function() onPressed,
    DsButtonType type = DsButtonType.primary,
    bool disabled = false,
  }) : props = DsButtonProps(
          label: label,
          onPressed: onPressed,
          type: type,
          disabled: disabled,
        );

  @override
  Widget build(BuildContext context) {
    final style = MdnButtonStyle();
    return Pressable(
      onPressed: props.onPressed,
      child: Box(
        mix: style.mix
            .apply(style.variants)
            .withVariant(props.type.variant)
            .withVariant(
              props.disabled
                  ? DsState.disabled.variant
                  : DsState.regular.variant,
            ),
        child: TextMix(
          props.label,
        ),
      ),
    );
  }
}
