import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';

class RawAnimatedSnackBar extends StatefulWidget {
  const RawAnimatedSnackBar({
    super.key,
    required this.duration,
    required this.child,
    required this.onRemoved,
    required this.snackBarPosition,
  });

  final Duration duration;
  final Widget child;
  final VoidCallback onRemoved;
  final SnackBarPosition snackBarPosition;

  @override
  State<RawAnimatedSnackBar> createState() => RawAnimatedSnackBarState();
}

class RawAnimatedSnackBarState extends State<RawAnimatedSnackBar> {
  bool isVisible = false;
  bool removed = false;

  final duration = const Duration(milliseconds: 200);

  final GlobalKey positionedKey = GlobalKey();

  void remove() {
    if (mounted && removed == false) {
      widget.onRemoved();
    } else {
      removed = true;
    }
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        setState(() => isVisible = true);
      },
    );
    Future.delayed(
      Duration(milliseconds: widget.duration.inMilliseconds - 1000),
      () {
        if (mounted) {
          setState(() => isVisible = false);
          Future.delayed(const Duration(seconds: 1), () {
            remove();
          });
        }
      },
    );

    super.initState();
  }

  double? get top {
    if (widget.snackBarPosition == SnackBarPosition.top) {
      if (isVisible) {
        return 42.h;
      } else {
        return -100;
      }
    } else if (widget.snackBarPosition == SnackBarPosition.bottom) {
      return null;
    }

    throw UnimplementedError();
  }

  double? get bottom {
    if (widget.snackBarPosition == SnackBarPosition.top) {
      return null;
    } else if (widget.snackBarPosition == SnackBarPosition.bottom) {
      if (isVisible) {
        return 26.h;
      } else {
        return -100;
      }
    }

    throw UnimplementedError();
  }

  double? get left {
    return 16.w;
  }

  double? get right {
    return 16.h;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      key: positionedKey,
      duration: duration,
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: widget.child,
        ),
      ),
    );
  }
}
