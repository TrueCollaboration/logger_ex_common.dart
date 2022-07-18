import 'package:logger_ex_common/src/external/for_app/models/LoggerLevel.dart';
import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';

class LoggerLevelImpl extends IEntity implements LoggerLevel {
  @override
  final String name;

  LoggerLevelImpl({
    int? id,
    required this.name,
  }) : super(id: id);
}