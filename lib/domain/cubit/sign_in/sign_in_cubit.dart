import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_target/domain/cubit/cubit_status.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';
import 'package:flutter_target/utils/resource.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final UserRepository _userRepository;

  SignInCubit(this._userRepository) : super(SignInState.initial());

  void emailChanged(String value) {
    emit(state.copyWith(email: value, status: CubitStatus.initial));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, status: CubitStatus.initial));
  }

  void signIn() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final result = await _userRepository.signIn(
      state.email,
      state.password,
    );

    result.when(
      onSuccess: (_) => emit(state.copyWith(status: CubitStatus.success)),
      onError: (error) => emit(
        state.copyWith(status: CubitStatus.error, error: error.message),
      ),
    );
  }
}
