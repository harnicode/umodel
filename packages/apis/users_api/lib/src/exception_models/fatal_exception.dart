import 'exceptions.dart';

class UserApiFatalException extends UserApiException {
  UserApiFatalException({
    required super.code,
    required super.message,
    required super.endpoint,
  });
}
