// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class ILoginRepository {
  Future<bool> login({required String email, required String password});
}

class LoginRepository implements ILoginRepository {
  @override
  Future<bool> login({required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'yurihotmail@hotmail.com' && password == '123456') {
      return true;
    } else {
      return false;
    }
  }
}
