import 'package:logger_ex_common/src/external/for_app/ILoggerInput.dart';
import 'package:logger_ex_common/src/external/for_app/LoggerEx.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerAssetImpl.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerContextImpl.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerLaunchPointImpl.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerLevelImpl.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerMessageImpl.dart';
import 'package:logger_ex_common/src/external/for_impl/models/LoggerSectionImpl.dart';

abstract class AbstractInput implements ILoggerInput {
  Future<bool> initialize(LoggerEx logger);

  Future<void> close();

  /// Input should also initialize section id there
  Future<void> createAndLoadSections(List<LoggerSectionImpl> sections);

  Future<void> createAndLoadLevels(List<LoggerLevelImpl> levels);

  Future<void> writeLaunchPoints(List<LoggerLaunchPointImpl> points);

  Future<void> writeContexts(List<LoggerContextImpl> contexts);

  Future<void> writeMessages(List<LoggerMessageImpl> messages);

  Future<void> sinkAssets(List<LoggerAssetImpl> assets);

  Future<void> writeAssets(List<LoggerAssetImpl> assets);

}