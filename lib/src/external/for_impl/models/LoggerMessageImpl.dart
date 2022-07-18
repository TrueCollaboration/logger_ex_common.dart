import 'dart:isolate';

import 'package:intl/intl.dart';
import 'package:logger_ex_common/src/external/for_app/models/ILoggerContext.dart';
import 'package:logger_ex_common/src/external/for_app/models/LoggerMessage.dart';
import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerAssetImpl.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerLevelImpl.dart';

class LoggerMessageImpl extends IEntity implements LoggerMessage {
  static final DateFormat dateFormat = new DateFormat('HH:mm:ss');
  
  @override
  final ILoggerContext? context;

  @override
  final LoggerLevelImpl level;

  @override
  final int date;

  @override
  final String? tag;

  @override
  final String? msg;

  @override
  final List<LoggerAssetImpl> assets;
  
  LoggerMessageImpl({
    int? id,
    required this.context,
    required this.level,
    required this.date,
    required this.tag,
    required this.msg,
    required this.assets,
  }) : super(id: id);

  @override
  bool hasContext() => context != null;
}