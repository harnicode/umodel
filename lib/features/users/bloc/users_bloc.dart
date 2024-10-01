import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umodel_users_repository/umodel_user_repository.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserRepository _userRepository;

  UsersBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(UsersState()) {
    on<FetchUsersRequestedEvent>(_handleFetchUsers);
    on<ToggleSelectionEvent>(_handleSelectionToggle);

    add(FetchUsersRequestedEvent());
  }

  void _handleFetchUsers(FetchUsersRequestedEvent event, Emitter emit) async {
    final result = await _userRepository.getAllUsers();

    emit(state.copyWith(users: result));
  }

  void _handleSelectionToggle(ToggleSelectionEvent event, Emitter emit) {
    final selections = Set<String>.from(state.selections);

    if (selections.contains(event.userId)) {
      selections.remove(event.userId);
    } else {
      selections.add(event.userId);
    }

    emit(state.copyWith(
      isSelectionActive: selections.isNotEmpty,
      selections: selections,
    ));
  }
}
