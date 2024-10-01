abstract class UserApiException implements Exception {
  final int code;
  final String message;
  final String endpoint;

  UserApiException({
    required this.code,
    required this.message,
    required this.endpoint,
  });
}
