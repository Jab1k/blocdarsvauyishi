class Uyiwiuchun {
  final String name;

  Uyiwiuchun({this.name = ''});

  Uyiwiuchun copyWith({
    String? name,
  }) =>
      Uyiwiuchun(name: name ?? this.name);
}
