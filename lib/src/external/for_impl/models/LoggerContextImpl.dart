import 'package:logger_ex_common/src/external/for_app/models/ILoggerContext.dart';
import 'package:logger_ex_common/src/external/for_app/models/LoggerSection.dart';
import 'package:logger_ex_common/src/external/for_app/models/LoggerLevel.dart';
import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';

import 'LoggerSectionImpl.dart';

class LoggerContextImpl extends IEntity implements ILoggerContext {
  @override
  late final LoggerContextImpl? parent;

  late final LoggerSectionImpl section;
  
  @override
  String get sectionName => section.name;

  @override
  final int date;
  
  LoggerContextImpl({
    int? id,
    LoggerContextImpl? parent,
    LoggerSectionImpl? section,
    required this.date,
  }) : super(id: id) {
    if(parent != null)
      this.parent = parent;
    if(section != null)
      this.section = section;
  }

  // @override
  // bool hasContext() => parent != null;

  bool isRoot() => false;

  @override
  void append(LoggerLevel level, Object tag, [Object? msg, List<Object>? assets])
    => throw UnimplementedError();

  @override
  ILoggerContext newContext(LoggerSection section)
    => throw UnimplementedError();
}