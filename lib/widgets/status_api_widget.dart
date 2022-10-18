import 'package:flutter_basic_utilities/enum/status.dart';
import 'package:flutter/material.dart';
import 'circular_progress_indicator_widget.dart';

class StatusAPIWidget extends StatelessWidget {
  const StatusAPIWidget({
    super.key,
    required this.status,
    this.onLoading,
    required this.onError,
    required this.onCompleted,
    required this.size,
  });
  final Status status;
  final Widget? onLoading;
  final Widget onError;
  final Widget onCompleted;
  final Size size;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case Status.completed:
        return onCompleted;
      case Status.error:
        return onError;
      case Status.loading:
      default:
        if (onLoading != null) {
          return onLoading!;
        } else {
          return circularProgressIndicatorWidget(size: size);
        }
    }
  }
}
