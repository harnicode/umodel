import 'package:dio/dio.dart';
import 'package:umodel_users_api/umodel_users_api.dart';

class UserApiHttp extends UserApi {
  final Dio _dio;

  UserApiHttp({required BaseOptions options}) : _dio = Dio(options);

  @override
  Future<UserApiGetPostsResult> getAllUsers() async {
    try {
      final response = await _dio.get('/users');

      final List<dynamic> usersData = response.data;

      final List<UserApiPostModel> users = usersData.map((item) {
        return UserApiPostModel.fromJson(item);
      }).toList();

      final result = UserApiGetPostsReponse(users: users);

      return success(result);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        final exception = UserApiBadRequestException(
          code: 400,
          message: e.response?.statusMessage ?? e.toString(),
          endpoint: '/users',
        );

        return failure(exception);
      }

      if (e.response?.statusCode == 404) {
        final exception = UserApiBadRequestException(
          code: 404,
          message: e.response?.statusMessage ?? e.toString(),
          endpoint: '/users',
        );

        return failure(exception);
      }

      final exception = UserApiFatalException(
        code: e.response?.statusCode ?? 500,
        message: e.response?.statusMessage ?? 'There was a fatal Dio Exception',
        endpoint: '/users',
      );

      return failure(exception);
    } catch (e) {
      final exception = UserApiFatalException(
        code: 500,
        message: e.toString(),
        endpoint: '/users',
      );

      return failure(exception);
    }
  }
}
