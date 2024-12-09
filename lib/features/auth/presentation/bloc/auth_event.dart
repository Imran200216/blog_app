part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
}

final class AuthSignUp extends AuthEvent {
  final String name;
  final String password;
  final String email;

  const AuthSignUp(
      {required this.name, required this.password, required this.email});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
