import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_target/domain/repositories/user_repository.dart';
import 'package:flutter_target/utils/resource.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final UserRepository _userRepository;

  SignInCubit(this._userRepository) : super(SignInState.initial());

  void emailChanged(String value) {
    emit(state.copyWith(email: value, status: SignInStatus.initial));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, status: SignInStatus.initial));
  }

  void signIn() async {
    emit(state.copyWith(status: SignInStatus.loading));

    final result = await _userRepository.signIn(
      state.email,
      state.password,
    );

    result.when(
      onSuccess: (_) => emit(state.copyWith(status: SignInStatus.success)),
      onError: (_, __) => emit(state.copyWith(status: SignInStatus.error)),
    );
  }
}
