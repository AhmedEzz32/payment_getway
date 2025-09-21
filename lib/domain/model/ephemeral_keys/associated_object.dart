class AssociatedObject {
  final String? type;
  final String? id;

  AssociatedObject({
    required this.type,
    required this.id,
  });

  factory AssociatedObject.fromJson(Map<String, dynamic> json) {
    return AssociatedObject(
      type: json['type'] as String?,
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
    };
  }
}
