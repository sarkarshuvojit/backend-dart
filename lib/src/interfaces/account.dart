abstract class Account {
    Future<dynamic> register(String username, String password);
    Future<dynamic> login(String username, String password);
    Future<dynamic> setPassword(
        String token, String email, 
        String oldPassword, String newPassword,
    );
    Future<dynamic> getPasswordResetCode(String token, String email);
    Future<dynamic> resetPassword(String email, String code, String password);
    Future<dynamic> addUser(String token, String email, String password);
    Future<dynamic> removeUser(String token, String userID);
    Future<dynamic> sudoGetToken(String token, String accountID);
    Future<dynamic> me(String token);
    Future<dynamic> users(String token);
}
