part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthEventLogin extends AuthEvent {
  final String email;
  final String password;

  AuthEventLogin({
    required this.email,
    required this.password,
  });
}
