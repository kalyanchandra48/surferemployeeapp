import 'dart:convert';

class PostRequest {
  final String description;
  final String requestType;
  final String priority;

  PostRequest({
    required this.description,
    required this.requestType,
    required this.priority,
  });

  PostRequest copyWith({
    String? description,
    String? requestType,
    String? priority,
  }) {
    return PostRequest(
      description: description ?? this.description,
      requestType: requestType ?? this.requestType,
      priority: priority ?? this.priority,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'requestType': requestType,
      'priority': priority,
    };
  }

  factory PostRequest.fromMap(Map<String, dynamic> map) {
    return PostRequest(
      description: map['description'] ?? '',
      requestType: map['requestType'] ?? '',
      priority: map['priority'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PostRequest.fromJson(String source) =>
      PostRequest.fromMap(json.decode(source));

  @override
  String toString() =>
      'PostRequest(description: $description, requestType: $requestType, priority: $priority)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostRequest &&
        other.description == description &&
        other.requestType == requestType &&
        other.priority == priority;
  }

  @override
  int get hashCode =>
      description.hashCode ^ requestType.hashCode ^ priority.hashCode;
}
