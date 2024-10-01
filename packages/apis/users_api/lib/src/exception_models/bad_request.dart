import 'exceptions.dart';

class UserApiBadRequestException extends UserApiException {
  UserApiBadRequestException({
    required super.code,
    required super.message,
    required super.endpoint,
  });
}
