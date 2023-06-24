part of 'main_cubit.dart';

class MainState extends Equatable {
  final bool isLoading;
  final bool isAuthenticated;
  final bool isError;
  final bool isSuccessedSignOut;
  final String email;

  const MainState({
    this.isLoading = false,
    this.isAuthenticated = false,
    this.isError = false,
    this.isSuccessedSignOut = false,
    this.email = '',
  });

  MainState copyWith({
    bool? isLoading,
    bool? isAuthenticated,
    bool? isError,
    bool? isSuccessedSignOut,
    String? email,
  }) {
    return MainState(
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isError: isError ?? this.isError,
      isSuccessedSignOut: isSuccessedSignOut ?? this.isSuccessedSignOut,
      email: email ?? this.email,
    );
  }

  @override
  List<Object> get props => [
        isLoading,
        isError,
        isSuccessedSignOut,
        isAuthenticated,
        email,
      ];
}
