// import 'package:logger_ex_common/src/external/for_app/models/LoggerSection.dart';
// import 'package:logger_ex_common/src/external/for_app/models/LoggerLevel.dart';
// import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';

// import 'ILoggerContext.dart';
// import 'LoggerSectionImpl.dart';

// abstract class AbstractLoggerContext extends IEntity implements ILoggerContext {
//   @override
//   AbstractLoggerContext? get parent;

//   LoggerSectionImpl? get section;
  
//   @override
//   String get sectionName => section != null ? section!.name : "";

//   @override
//   int get date;

//   // @override
//   // bool hasContext() => parent != null;

//   @override
//   void append(LoggerLevel level, Object tag, [Object? msg, List<Object>? assets])
//     => throw UnimplementedError();

//   @override
//   ILoggerContext newContext(LoggerSection section)
//     => throw UnimplementedError();
// }