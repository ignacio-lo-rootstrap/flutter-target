part of 'sign_in_cubit.dart';

class SignInState extends Equatable {
  final String email;
  final String password;
  final CubitStatus status;
  final String? error;

  const SignInState({
    required this.email,
    required this.password,
    required this.status,
    this.error,
  });

  factory SignInState.initial() {
    return SignInState(
      email: '',
      password: '',
      status: CubitStatus.initial,
    );
  }

  SignInState copyWith({
    String? email,
    String? password,
    CubitStatus? status,
    String? error,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        status,
        error,
      ];
}
