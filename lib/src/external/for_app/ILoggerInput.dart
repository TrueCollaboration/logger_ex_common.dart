import 'models/ILoggerContext.dart';
import 'models/LoggerAsset.dart';
import 'models/LoggerLaunchPoint.dart';
import 'models/LoggerLevel.dart';
import 'models/LoggerMessage.dart';
import 'models/LoggerSection.dart';

abstract class ILoggerInput {

  Future<void> readSections(
    List<LoggerSection> output, {
      int startFrom = 0,
      int limit = 100,
  });

  Future<void> readLevels(
    List<LoggerLevel> output, {
      int startFrom = 0,
      int limit = 100,
  });

  Future<void> readLaunchPoints(
    List<LoggerLaunchPoint> output, {
      int startFrom = 0,
      int limit = 100,
  });

  Future<void> readContexts(
    ILoggerContext? context,
    List<ILoggerContext> output, {
      ILoggerContext? startFrom,
      int limit = 100,
  });

  Future<void> readMessages(
    ILoggerContext? context,
    List<LoggerMessage> output, {
      LoggerMessage? startFrom,
      int limit = 100,
  });

  Future<void> readAssets(
    List<LoggerAsset> output, {
      LoggerAsset? startFrom,
      int limit = 100,
  });
}