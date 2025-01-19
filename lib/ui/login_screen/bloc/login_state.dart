part of 'login_bloc.dart';

class LoginState extends Equatable with FormzMixin {
  const LoginState({
    this.emailAddress = const EmailAddress.pure(''),
    this.password = const Password.pure(''),
    this.apiStatus,
    this.isPasswordVisible = false,
  });

  final EmailAddress emailAddress;
  final Password password;
  final ApiStatus? apiStatus;
  final bool isPasswordVisible;

  LoginState copyWith({
    EmailAddress? emailAddress,
    Password? password,
    ApiStatus? apiStatus,
    bool? isPasswordVisible,
  }) {
    return LoginState(
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      apiStatus: apiStatus ?? this.apiStatus,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }

  @override
  List<Object?> get props => [
        emailAddress,
        password,
        apiStatus,
        isPasswordVisible,
      ];

  @override
  List<FormzInput> get inputs => [
        emailAddress,
        password,
      ];
}
