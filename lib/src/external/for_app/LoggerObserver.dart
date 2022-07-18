import 'models/LoggerMessage.dart';

typedef VoidCallback = void Function();
typedef OnAppendFunction = void Function(LoggerMessage message);

abstract class LoggerObserver {
  factory LoggerObserver({
    VoidCallback? onInitialize,
    OnAppendFunction? onAppend,
    VoidCallback? onClose,
  }) = _LoggerObserverImpl;
  
  void onInitialize();

  void onAppend(LoggerMessage message);
  
  void onClose();
}

class _LoggerObserverImpl implements LoggerObserver {
  final VoidCallback? _onInitialize;
  final OnAppendFunction? _onAppend;
  final VoidCallback? _onClose;
  _LoggerObserverImpl({
    VoidCallback? onInitialize,
    OnAppendFunction? onAppend,
    VoidCallback? onClose,
  }) : _onInitialize = onInitialize,
  _onAppend = onAppend,
  _onClose = onClose;

  @override
  void onInitialize() => _onInitialize?.call();

  @override
  void onAppend(LoggerMessage message) => _onAppend?.call(message);

  @override
  void onClose() => _onClose?.call();

}