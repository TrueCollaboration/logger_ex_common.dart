import 'dart:io';

import 'package:logger_ex_common/library_impl.dart';
import 'package:logger_ex_common/src/external/for_app/ILoggerInput.dart';

import 'LoggerObserver.dart';
import 'models/ILoggerContext.dart';
import 'models/LoggerLevel.dart';
import 'models/LoggerSection.dart';

abstract class LoggerEx {
  
  /// Default directory for default logger
  /// 
  /// NOTE: recommend to use an absolute path
  static Directory defaultDirectory = Directory("log");

  /// Default sections for default logger
  static List<LoggerSection> defaultSections = [
    LoggerSection.empty("core"),
  ];

  /// Default logger
  static late LoggerEx instance;







  


  LoggerEx({
    required List<LoggerLevel> levels,
    required List<LoggerSection> sections,
  }) : _levels = levels, _sections = [] {
    for(final section in sections)
      _sections.addAll(_extractChildren(null, [section]));
  }

  Iterable<LoggerObserver> get observers => _observers;
  Iterable<LoggerLevel> get levels => _levels;
  Iterable<LoggerSection> get sections => _sections;

  ILoggerContext get context;

  ILoggerInput get input;

  bool get initialized;

  bool get closed;

  void addObserver(LoggerObserver observer)
    => _observers.add(observer);
    
  void removeObserver(LoggerObserver observer)
    => _observers.remove(observer);

  Future<bool> init();
  
  Future<bool> close();


  final List<LoggerObserver> _observers = [];
  final List<LoggerLevel> _levels;
  late final List<LoggerSectionImpl> _sections;
  
  List<LoggerSectionImpl> _extractChildren(LoggerSectionImpl? parent, Iterable<LoggerSection> children) {
    final List<LoggerSectionImpl> list = [];
    for(final section in children) {
      final model = LoggerSectionImpl.copyFrom(section, parent: parent);
      list.add(model);
      list.addAll(_extractChildren(model, LoggerSection.getChildren(section)));
    } return list;
  }
}