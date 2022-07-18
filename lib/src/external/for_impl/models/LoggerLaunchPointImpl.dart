import 'package:logger_ex_common/src/external/for_app/models/LoggerLaunchPoint.dart';
import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerMessageImpl.dart';

class LoggerLaunchPointImpl extends IEntity implements LoggerLaunchPoint {
  @override
  LoggerMessageImpl? firstLog;

  @override
  LoggerMessageImpl? lastLog;

  @override
  final int date;
  
  LoggerLaunchPointImpl({
    int? id,
    this.firstLog,
    this.lastLog,
    required this.date,
  }) : super(id: id);
}