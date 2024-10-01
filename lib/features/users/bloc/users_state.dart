part of 'users_bloc.dart';

class UsersState {
  Set<String> selections;
  List<UserModel> users;
  bool isSelectionActive;

  UsersState({
    this.users = const [],
    this.selections = const {},
    this.isSelectionActive = false,
  });

  @override
  String toString() {
    return """HomeState($selections)""";
  }

  UsersState copyWith({
    Set<String>? selections,
    List<UserModel>? users,
    bool? isSelectionActive,
  }) {
    return UsersState(
      selections: selections ?? this.selections,
      users: users ?? this.users,
      isSelectionActive: isSelectionActive ?? this.isSelectionActive,
    );
  }
}
