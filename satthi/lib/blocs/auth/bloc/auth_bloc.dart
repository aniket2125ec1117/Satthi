import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satthi/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await authRepository.login(event.email, event.password);
        emit(AuthAuthenticated(user));
      } catch (error) {
        emit(AuthError(error.toString()));
      }
    });

    on<RegisterEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        await authRepository.register(event.name, event.email, event.password, event.role);
        emit(AuthInitial()); // Registration success, redirect to login
      } catch (error) {
        emit(AuthError(error.toString()));
      }
    });

    on<LogoutEvent>((event, emit) {
      emit(AuthInitial());
    });
  }
}
