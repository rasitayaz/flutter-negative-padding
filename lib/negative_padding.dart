library negative_padding;

import 'package:flutter/widgets.dart';
import 'package:intrinsic_size_overflow_box/intrinsic_size_overflow_box.dart';

/// A widget that oversizes its child by the given padding.
///
/// Works just like [Padding], but instead of shrinking the child,
/// it oversizes it by the given padding.
///
/// This widget is intended to be used with flex widgets,
/// such as [Row] and [Column].
class NegativePadding extends StatelessWidget {
  const NegativePadding({
    super.key,
    required this.padding,
    required this.child,
  });

  /// The amount of space by which to oversize the child.
  final EdgeInsets padding;

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Transform.translate(
        offset: Offset(-padding.left, -padding.top),
        child: IntrinsicSizeOverflowBox(
          minHeight: constraints.minHeight + padding.vertical,
          maxHeight: constraints.maxHeight + padding.vertical,
          minWidth: constraints.minWidth + padding.horizontal,
          maxWidth: constraints.maxWidth + padding.horizontal,
          child: child,
        ),
      );
    });
  }
}
