import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modular_flutter/src/modules/auth/repositories/login.repository.dart';
import 'events/login.event.dart';
import 'states/login.state.dart';

class LoginBloc extends Bloc<LoginEvent, ILoginState> {
  final ILoginRepository loginRepository;

  // Cria estado inicial como parado e registra o bloc
  LoginBloc(this.loginRepository) : super(LoginIlde()) {
    on<LoginWithEmail>(loginEmail);
  }

  Future loginEmail(LoginWithEmail event, Emitter<ILoginState> emit) async {
    emit(LoginLoading());
    if (await loginRepository.login(
        email: event.email, password: event.password)) {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure("Login e/ou senha inválidos."));
    }
  }
}
