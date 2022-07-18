import 'package:logger_ex_common/src/external/for_app/models/LoggerSection.dart';
import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';

class LoggerSectionImpl extends IEntity implements LoggerSection {
  @override
  final String name;

  late final LoggerSectionImpl? parent;

  LoggerSectionImpl({
    int? id,
    required this.name,
    LoggerSectionImpl? parent,
  }) : super(id: id) {
    if(parent != null)
      this.parent = parent;
  }

  LoggerSectionImpl.copyFrom(
    LoggerSection instance, {
      required this.parent,
  })
    : name = instance.name, super(id: null);
}




//// import 'package:logger_ex_common/src/external/for_app/models/LoggerSection.dart';

// class LoggerSectionImpl implements LoggerSection {
//   int? id;

//   @override
//   final String name;
  
//   @override
//   LoggerSectionImpl? parent;

//   @override
//   final List<LoggerSectionImpl> children = [];

//   LoggerSectionImpl(
//     this.name,
//   );
  
//   @override
//   void add(covariant List<LoggerSectionImpl> list) {
//     for(final section in children) {
//       if(section.parent != null)
//         throw(new Exception("Section ${section.name} already has parent"));
//     } children.addAll(list);
//   }

//   @override
//   bool isWritten() => id != null;
// }