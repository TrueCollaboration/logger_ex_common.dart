import 'ILoggerContext.dart';
import 'LoggerAsset.dart';
import 'LoggerLevel.dart';

abstract class LoggerMessage {
  ILoggerContext? get context;
  LoggerLevel get level;
  int get date;
  String? get tag;
  String? get msg;
  Iterable<LoggerAsset> get assets;

  bool hasContext();
}