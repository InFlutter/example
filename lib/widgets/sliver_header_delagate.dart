import 'package:flutter/cupertino.dart';

class Nasl extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double max;
  final double min;

  Nasl({
    required this.child,
    required this.max,
    required this.min,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant Nasl oldDelegate) {
    if (oldDelegate.max != max ||
        oldDelegate.min != min ||
        oldDelegate.child != child) {
      return true;
    } else {
      return false;
    }
  }
}
