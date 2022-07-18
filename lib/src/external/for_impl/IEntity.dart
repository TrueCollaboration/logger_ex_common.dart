import 'EEntityState.dart';

abstract class IEntity {
  int? id;
  
  EEntityState state = EEntityState.NONE;
  
  bool get isWritten => state == EEntityState.WRITTEN;

  bool get isEdited => state == EEntityState.EDITED;

  bool get isQueue => state == EEntityState.QUEUE;

  IEntity({
    this.id,
  });
}