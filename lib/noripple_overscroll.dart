import 'package:flutter/material.dart';

/// Cancel ripples caused by excessive Listview scrolling.
class NoRippleOverScroll extends StatefulWidget {
  final Widget child;

  NoRippleOverScroll({@required this.child});

  @override
  NoRippleOverScrollState createState() => NoRippleOverScrollState();
}

class NoRippleOverScrollState extends State<NoRippleOverScroll> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: _OverScrollBehavior(),
      child: widget.child,
    );
  }
}

class _OverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    if (getPlatform(context) == TargetPlatform.android || getPlatform(context) == TargetPlatform.fuchsia) {
      return GlowingOverscrollIndicator(
        child: child,
        showLeading: false,
        showTrailing: false,
        axisDirection: axisDirection,
        color: Theme.of(context).accentColor,
      );
    } else {
      return child;
    }
  }
}
