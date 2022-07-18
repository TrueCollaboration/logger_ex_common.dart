import 'LoggerMessage.dart';

abstract class LoggerAsset {
  LoggerMessage get message;
  
  /// Accept Uint8List and Stream\<Uint8List>
  Object? get data;

  String get path;
}