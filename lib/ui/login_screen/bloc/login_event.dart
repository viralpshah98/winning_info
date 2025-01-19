part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class EmailAddressEvent extends LoginEvent {
  const EmailAddressEvent({required this.emailAddress});

  final String emailAddress;
}

class PasswordEvent extends LoginEvent {
  const PasswordEvent({required this.password});

  final String password;
}

class TogglePasswordVisibilityEvent extends LoginEvent {
  const TogglePasswordVisibilityEvent();
}

class OnClickLoginEvent extends LoginEvent {
  const OnClickLoginEvent();
}

class LoginApiBaseResourceEvent extends LoginEvent {
  const LoginApiBaseResourceEvent({required this.apiBaseResource});

  final ApiBaseResource apiBaseResource;
}
