import 'package:logger_ex_common/src/external/for_app/models/LoggerLevel.dart';
import 'package:logger_ex_common/src/external/for_app/models/LoggerSection.dart';

abstract class ILoggerContext {
  ILoggerContext? get parent;
  
  String get sectionName;

  int get date;

  ILoggerContext newContext(LoggerSection section);

  /// [assets] can be [Stream] or [Uint8List]
  void append(
    LoggerLevel level,
    Object tag, [
      Object? msg,
      List<Object>? assets,
  ]);
}