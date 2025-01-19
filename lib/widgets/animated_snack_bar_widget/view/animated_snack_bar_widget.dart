import 'package:flutter/material.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/widgets/widgets.dart';

class AnimatedSnackBar {
  /// Pass duration you want the snack bar to be visible for.
  final Duration duration;

  /// Build your snack bar using this builder.
  /// This will be passed to [RawAnimatedSnackBar]
  /// and will be used to build your custom snack bar.
  final WidgetBuilder builder;

  /// Determine which position you want the snack bar
  /// to be displayed at for mobile.
  final SnackBarPosition snackBarPosition;

  late OverlayEntry entry;

  AnimatedSnackBar({
    this.duration = const Duration(seconds: 8),
    this.snackBarPosition = SnackBarPosition.top,
    required this.builder,
  });

  void closeOverlay() {
    if (entry.mounted) {
      entry.remove();
    }
  }

  /// This method will create an overlay for your snack bar
  /// and insert it to the overlay entries of navigator.
  Future<void> show(BuildContext context) async {
    final overlay = Navigator.of(context).overlay!;
    entry = OverlayEntry(
      builder: (_) => RawAnimatedSnackBar(
        duration: duration,
        onRemoved: entry.remove,
        snackBarPosition: snackBarPosition,
        child: builder.call(context),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => overlay.insert(entry),
    );
    await Future.delayed(duration);
  }
}
