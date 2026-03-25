class Developer {
  final String id;
  final String developerName;
  final bool attended;

  Developer({
    required this.id,
    required this.developerName,
    required this.attended,
  });

  Developer copyWith({
    String? id,
    String? developerName,
    bool attended = false,
  }) => Developer(
    id: id ?? this.id,
    developerName: developerName ?? this.developerName,
    attended: attended,
  );
}
