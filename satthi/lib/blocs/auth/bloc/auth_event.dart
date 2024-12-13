import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class RegisterEvent extends AuthEvent {
  final String name;
  final String email;
  final String password;
  final String role;

  RegisterEvent(this.name, this.email, this.password, this.role);

  @override
  List<Object> get props => [name, email, password, role];
}

class LogoutEvent extends AuthEvent {}
