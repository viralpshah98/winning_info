import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:get/get.dart';
import 'package:winning_info/api/api_base.dart';
import 'package:winning_info/ui/home_screen/home_screen.dart';
import 'package:winning_info/ui/login_screen/login_screen.dart';
import 'package:winning_info/utils/enum_utils/enum_utils.dart';
import 'package:winning_info/utils/get_storage_utils/get_storage_utils.dart';
import 'package:winning_info/utils/snack_bar_utils/snack_bar_utils.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>(_mapEventToState);

    _userRepository = UserRepository();
    _loginStreamSubscription =
        _userRepository.loginWithOTPApiStream.listen((event) {
      add(LoginApiBaseResourceEvent(apiBaseResource: event));
    });
  }

  late UserRepository _userRepository;
  late StreamSubscription _loginStreamSubscription;

  void _mapEventToState(LoginEvent event, Emitter<LoginState> emit) {
    if (event is EmailAddressEvent) {
      return _mapEmailAddressEventToState(event, emit);
    } else if (event is PasswordEvent) {
      return _mapPasswordEventToState(event, emit);
    } else if (event is TogglePasswordVisibilityEvent) {
      return _mapTogglePasswordVisibilityEventToState(event, emit);
    } else if (event is OnClickLoginEvent) {
      return _mapOnClickLoginEventToState(event, emit);
    } else if (event is LoginApiBaseResourceEvent) {
      return _mapLoginApiBaseResourceEventToState(event, emit);
    }
  }

  @override
  Future<void> close() {
    _loginStreamSubscription.cancel();
    return super.close();
  }

  void _mapEmailAddressEventToState(
      EmailAddressEvent event, Emitter<LoginState> emit) {
    final emailAddress = EmailAddress.dirty(value: event.emailAddress);
    emit(state.copyWith(emailAddress: emailAddress));
  }

  void _mapPasswordEventToState(PasswordEvent event, Emitter<LoginState> emit) {
    final password = Password.dirty(value: event.password);
    emit(state.copyWith(password: password));
  }

  void _mapOnClickLoginEventToState(
      OnClickLoginEvent event, Emitter<LoginState> emit) async {
    _userRepository.loginWithOTP(
      loginRequestModel: LoginRequestModel(
        loginId: state.emailAddress.value,
        password: state.password.value,
      ),
    );
  }

  void _mapLoginApiBaseResourceEventToState(
      LoginApiBaseResourceEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(apiStatus: event.apiBaseResource.apiStatus));
    if (event.apiBaseResource.apiStatus == ApiStatus.success) {
      final userResponseModel =
          UserResponseModel.fromJson(event.apiBaseResource.data);
      GetStorageUtils.setString(
          kUserResponseModel, jsonEncode(userResponseModel));
      GetStorageUtils.setBoolean(kStayLogin, true);
      Get.offNamed(HomeScreen.route);
    } else if (event.apiBaseResource.apiStatus == ApiStatus.error) {
      SnackBarUtils.showSnackBar(
        type: SnackBarType.error,
        message: event.apiBaseResource.message,
      );
    }
  }

  void _mapTogglePasswordVisibilityEventToState(
      TogglePasswordVisibilityEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }
}
