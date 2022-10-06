part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {
  final String username;
  final String email;
  final String gender;
  final String password;
  final String confirmPassword;
  final CubitStatus status;

  const SignUpState({
    required this.username,
    required this.email,
    required this.gender,
    required this.password,
    required this.confirmPassword,
    required this.status,
  });

  factory SignUpState.initial() {
    return SignUpState(
      username: '',
      email: '',
      gender: '',
      password: '',
      confirmPassword: '',
      status: CubitStatus.initial,
    );
  }

  SignUpState copyWith({
    String? username,
    String? email,
    String? gender,
    String? password,
    String? confirmPassword,
    CubitStatus? status,
  }) {
    return SignUpState(
      username: username ?? this.username,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        username,
        email,
        gender,
        password,
        confirmPassword,
        status,
      ];
}
