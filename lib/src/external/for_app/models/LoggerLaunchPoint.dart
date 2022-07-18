import 'package:logger_ex_common/library.dart';

abstract class LoggerLaunchPoint {
  LoggerMessage? get firstLog;
  LoggerMessage? get lastLog;
  int get date;
}