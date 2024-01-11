
import '../api_client.dart';
import '../interfaces/account.dart';

class Account implements IAccount {

  final ApiClient _apiClient;
  final Map<String, String> _commonHeaders;

  Account(this._apiClient, this._commonHeaders);

  @override
  Future addUser(String token, email, password) {
    // TODO: implement addUser
    throw UnimplementedError();
  }

  @override
  Future getPasswordResetCode(String token, email) {
    // TODO: implement getPasswordResetCode
    throw UnimplementedError();
  }

  @override
  Future<String> login(String username, password) {
    return _apiClient
      .post(
        "login", headers: _commonHeaders, 
        body: { "email": username, "password": password }
      ).then((value) => value.body);
  }

  @override
  Future me(String token) {
    // TODO: implement me
    throw UnimplementedError();
  }

  @override
  Future<String> register(String username, password) async {
    return _apiClient
      .post(
        "register", headers: _commonHeaders, 
        body: { "email": username, "password": password }
      ).then((value) => value.body);
  }

  @override
  Future removeUser(String token, userID) {
    // TODO: implement removeUser
    throw UnimplementedError();
  }

  @override
  Future resetPassword(String email, code, password) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future setPassword(String token, email, oldPassword, newPassword) {
    // TODO: implement setPassword
    throw UnimplementedError();
  }

  @override
  Future sudoGetToken(String token, accountID) {
    // TODO: implement sudoGetToken
    throw UnimplementedError();
  }

  @override
  Future users(String token) {
    // TODO: implement users
    throw UnimplementedError();
  }
}
