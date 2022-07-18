import 'package:logger_ex_common/src/external/for_app/models/LoggerAsset.dart';
import 'package:logger_ex_common/src/external/for_impl/IEntity.dart';

import 'LoggerMessageImpl.dart';

class LoggerAssetImpl extends IEntity implements LoggerAsset {
  @override
  late final LoggerMessageImpl message;
  
  @override
  final Object? data;

  @override
  late final String path;
  
  LoggerAssetImpl({
    int? id,
    LoggerMessageImpl? message,
    required this.data,
    String? path,
  }) : super(id: id) {
    if(message != null)
      this.message = message;
    if(path != null)
      this.path = path;
  }
}