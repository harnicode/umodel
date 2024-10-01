part of 'users_bloc.dart';

abstract class UsersEvent {}

class FetchUsersRequestedEvent extends UsersEvent {}

class ToggleSelectionEvent extends UsersEvent {
  final String userId;

  ToggleSelectionEvent({required this.userId});
}
