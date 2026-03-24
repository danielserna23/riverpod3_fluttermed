class Developers {
  final String id;
  final String developerName;
  final bool attended;

  Developers({
    required this.id,
    required this.developerName,
    required this.attended,
  });

  Developers copyWith({
    String? id,
    String? developerName,
    bool attended = false,
  }) => Developers(
    id: id ?? this.id,
    developerName: developerName ?? this.developerName,
    attended: attended,
  );
}
