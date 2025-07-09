import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

extension MyToastsExt on BuildContext {
  void showSuccess({required String message}) {
    toastification.show(
      context: this,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
      style: ToastificationStyle.fillColored,
      type: ToastificationType.success,
      alignment: Alignment.bottomCenter,
    );
  }

  void showInfo({required String message}) {
    toastification.show(
      context: this,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
      style: ToastificationStyle.fillColored,
      type: ToastificationType.info,
      alignment: Alignment.bottomCenter,
    );
  }

  void showWarning({required String message}) {
    toastification.show(
      context: this,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
      style: ToastificationStyle.fillColored,
      type: ToastificationType.warning,
      alignment: Alignment.bottomCenter,
    );
  }

  void showError({required String message}) {
    toastification.show(
      context: this,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
      style: ToastificationStyle.fillColored,
      type: ToastificationType.error,
      alignment: Alignment.bottomCenter,
    );
  }
}
