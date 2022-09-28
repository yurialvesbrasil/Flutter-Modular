abstract class ILoginState {}

class LoginIlde implements ILoginState {}

class LoginSuccess implements ILoginState {}

class LoginLoading implements ILoginState {}

class LoginFailure implements ILoginState {
  final String message;

  LoginFailure(this.message);
}
