import '../exception_models/exceptions.dart';
import '../typedef.dart';
import 'user_model.dart';

typedef UserApiGetPostsResult
    = UserApiResult<UserApiException, UserApiGetPostsReponse>;

class UserApiGetPostsReponse {
  final List<UserApiPostModel> users;

  UserApiGetPostsReponse({
    required this.users,
  });
}
