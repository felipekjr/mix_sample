
import 'ds_button.variant.dart';

class DsButtonProps {
  DsButtonProps({
    required this.label,
    required this.onPressed,
    this.type = DsButtonType.primary,
    this.disabled = false
  });

  // {@prop:name} label
  // {@prop:type} Function
  // {@prop:required} true
  // {@prop:docs} Define the callback that triggers when button is tapped
  final Function() onPressed;

  // {@prop:name} label
  // {@prop:type} String
  // {@prop:required} true
  // {@prop:docs} Define the text that shows in button
  final String label;

  // {@prop:name} type
  // {@prop:type} MdnButtonType
  // {@prop:required} false
  // {@prop:docs} Define the type of button
  final DsButtonType type;

  // {@prop:name} disabled
  // {@prop:type} bool
  // {@prop:required} false
  // {@prop:docs} Define if button is disabled for taps
  final bool disabled;
}
