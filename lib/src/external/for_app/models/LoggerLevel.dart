import 'package:logger_ex_common/src/external/for_impl/models/LoggerLevelImpl.dart';

abstract class LoggerLevel {
  String get name;
  
  factory LoggerLevel({
    required String name,
  }) = LoggerLevelImpl;
}