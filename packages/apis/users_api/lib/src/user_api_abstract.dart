import 'response_models/response_models.dart';
import 'typedef.dart';

abstract class UserApi {
  UserApi();

  UserApiResult<E, T> success<E, T>(T value) {
    return (exception: null, response: value);
  }

  UserApiResult<E, T> failure<E, T>(E error) {
    return (exception: error, response: null);
  }

  Future<UserApiGetPostsResult> getAllUsers();
}
