abstract class LoggerSection {
  String get name => _name;

  LoggerSection(
    this._name, [
      List<LoggerSection>? children,
  ]) : _children = children ?? [] {
    for(final child in _children)
      child._parent = this;
  }
  
  static LoggerSection empty(String name) => _LoggerSection(name);
  
  static LoggerSection? getParent(LoggerSection instance) => instance._parent;
  static T getChild<T extends LoggerSection>(LoggerSection instance, int index) => instance._children[index] as T;
  static Iterable<LoggerSection> getChildren(LoggerSection instance) => instance._children;


  late final String _name;
  late final List<LoggerSection> _children;
  late LoggerSection? _parent;
}

class _LoggerSection extends LoggerSection {
  _LoggerSection(String name) : super(name);
}

// abstract class LoggerSection {
//   static LoggerSection empty(String name, [LoggerSection? parent]) => _LoggerSection(name, parent);

//   static int? getId(LoggerSection instance) => instance._id;
//   static String getName(LoggerSection instance) => instance._name;
//   static LoggerSection? getparent(LoggerSection instance) => instance._parent;
//   static T setparent<T extends LoggerSection?>(LoggerSection instance, T parent) => instance._parent = parent;
//   static int? getparentId(LoggerSection instance) => instance._parent?._id;

//   static void setId(LoggerSection instance, int id) => instance._id = id;


//   LoggerSection(
//     String name, [
//       LoggerSection? parent,
//   ]) : _name = name, _parent = parent;

//   List<LoggerSection> init();

//   final String _name;
//   late final LoggerSection? _parent;
//   int? _id;
// }

// class _LoggerSection extends LoggerSection {
//   _LoggerSection(String name, [
//     LoggerSection? parent,
//   ]) : super(name, parent);

//   @override
//   List<LoggerSection> init() => [];
// }