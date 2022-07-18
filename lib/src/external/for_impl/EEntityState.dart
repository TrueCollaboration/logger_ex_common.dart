class EEntityState {
  final int value;
  const EEntityState(this.value);

  static const EEntityState NONE        = EEntityState(0);
  static const EEntityState WRITTEN     = EEntityState(1);
  static const EEntityState EDITED      = EEntityState(2);
  static const EEntityState QUEUE       = EEntityState(4);

  @override
  operator ==(Object other) => other is EEntityState && (this.value & other.value) == other.value;

  EEntityState operator +(EEntityState state) => EEntityState(this.value | state.value);

  EEntityState operator -(EEntityState state) => EEntityState(this.value & ~state.value);

  @override
  int get hashCode => value.hashCode;

}