import 'dart:convert';

class Response {
  String status;
  String data;
  String error;
  Response({
    required this.status,
    required this.data,
    required this.error,
  });

  Response copyWith({
    String? status,
    String? data,
    String? error,
  }) {
    return Response(
      status: status ?? this.status,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'data': data,
      'error': error,
    };
  }

  factory Response.fromMap(Map<String, dynamic> map) {
    return Response(
      status: map['status'] ?? '',
      data: map['data'] ?? '',
      error: map['error'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Response.fromJson(String source) =>
      Response.fromMap(json.decode(source));

  @override
  String toString() => 'Response(status: $status, data: $data, error: $error)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Response &&
        other.status == status &&
        other.data == data &&
        other.error == error;
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode ^ error.hashCode;
}
