import 'dart:convert';

class SurfResponse {
  String status;
  String data;
  String error;
  SurfResponse({
    required this.status,
    required this.data,
    required this.error,
  });
}
