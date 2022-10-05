part of 'sign_in_cubit.dart';

enum SignInStatus { initial, loading, success, error }

class SignInState extends Equatable {
  final String email;
  final String password;
  final SignInStatus status;

  const SignInState({
    required this.email,
    required this.password,
    required this.status,
  });

  factory SignInState.initial() {
    return SignInState(
      email: '',
      password: '',
      status: SignInStatus.initial,
    );
  }

  SignInState copyWith({
    String? email,
    String? password,
    SignInStatus? status,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        status,
      ];
}
