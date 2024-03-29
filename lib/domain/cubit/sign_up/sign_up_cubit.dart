import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_target/domain/cubit/cubit_status.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';
import 'package:flutter_target/utils/resource.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final UserRepository _userRepository;

  SignUpCubit(this._userRepository) : super(SignUpState.initial());

  void usernameChanged(String value) {
    emit(state.copyWith(username: value, status: CubitStatus.initial));
  }

  void emailChanged(String value) {
    emit(state.copyWith(email: value, status: CubitStatus.initial));
  }

  void genderChanged(String value) {
    emit(state.copyWith(gender: value, status: CubitStatus.initial));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, status: CubitStatus.initial));
  }

  void confirmPasswordChanged(String value) {
    emit(state.copyWith(confirmPassword: value, status: CubitStatus.initial));
  }

  void signUp() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _userRepository.signUp(
      state.username,
      state.email,
      state.gender,
      state.password,
      state.confirmPassword,
    );

    result.when(
      onSuccess: (_) => emit(state.copyWith(status: CubitStatus.success)),
      onError: (_) => emit(state.copyWith(status: CubitStatus.error)),
    );
  }
}
