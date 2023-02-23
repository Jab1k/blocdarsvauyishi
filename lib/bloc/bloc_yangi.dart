class MainState {
  final int counter;
  final String name;

  MainState({this.counter = 0, this.name = ''});

  MainState copyWith({
    String? name,
    int? counter,
  }) =>
      MainState(name: name ?? this.name, counter: counter ?? this.counter);
}