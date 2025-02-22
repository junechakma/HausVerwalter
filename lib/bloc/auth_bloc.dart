import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEventLogin>((event, emit) async {
      emit(AuthLoading());
      try {
        final String email = event.email;
        final String password = event.password;

        if (email == "" && password == "") {
          return emit(
              AuthFailure('Please enter a valid email address and password.'));
        }
        if (password.length < 6) {
          return emit(
              AuthFailure('Password must be at least 6 characters long.'));
        }
        if (email == "") {
          return emit(AuthFailure('Please enter a valid email address.'));
        }

        await Future.delayed(const Duration(seconds: 2));

        return emit(AuthSuccess('$email+ $password'));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}
