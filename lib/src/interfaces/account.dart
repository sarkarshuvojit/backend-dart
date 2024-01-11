import '../api_client.dart';

abstract class IAccount {
    Future<dynamic> register(String username, password);
    Future<dynamic> login(String username, password);
    Future<dynamic> setPassword(String token, email, oldPassword, newPassword);
    Future<dynamic> getPasswordResetCode(String token, email);
    Future<dynamic> resetPassword(String email, code, password);
    Future<dynamic> addUser(String token, email, password);
    Future<dynamic> removeUser(String token, userID);
    Future<dynamic> sudoGetToken(String token, accountID);
    Future<dynamic> me(String token);
    Future<dynamic> users(String token);
}

