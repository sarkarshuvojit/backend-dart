import 'package:statibackend_dart_client/src/interfaces/account.dart';
import 'package:statibackend_dart_client/src/interfaces/database.dart';

class Backend implements Account, Database {
  String _baseURL = "https://na1.staticbackend.com";
  final String _publicKey;
  final String _region;

  Backend(this._publicKey, this._region) {
    _setBaseURL(region);
  }

  Backend.defaultRegion(this._publicKey): _region = "na1" {
    _setBaseURL(region);
  }

  void _setBaseURL(String region) {
    if (region == 'dev') {
        _baseURL = "http://localhost:8099";
    } else if (region.length > 3) {
        // for self-hosted base URL
        this._baseURL = region;
    } else {
        this._baseURL = "https://$region.staticbackend.com";
    }
  }

  String get region => _region;

  @override
  Future register(String username, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future addUser(String token, String email, String password) {
    // TODO: implement addUser
    throw UnimplementedError();
  }

  @override
  Future getPasswordResetCode(String token, String email) {
    // TODO: implement getPasswordResetCode
    throw UnimplementedError();
  }

  @override
  Future login(String username, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future me(String token) {
    // TODO: implement me
    throw UnimplementedError();
  }

  @override
  Future removeUser(String token, String userID) {
    // TODO: implement removeUser
    throw UnimplementedError();
  }

  @override
  Future resetPassword(String email, String code, String password) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future setPassword(String token, String email, String oldPassword, String newPassword) {
    // TODO: implement setPassword
    throw UnimplementedError();
  }

  @override
  Future sudoGetToken(String token, String accountID) {
    // TODO: implement sudoGetToken
    throw UnimplementedError();
  }

  @override
  Future users(String token) {
    // TODO: implement users
    throw UnimplementedError();
  }

  @override
  Future count(String token, repo, List<QueryItem> filters) {
    // TODO: implement count
    throw UnimplementedError();
  }

  @override
  Future create(String token, String repo, body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future createBulk(String token, String repo, List bodies) {
    // TODO: implement createBulk
    throw UnimplementedError();
  }

  @override
  Future delete(String token, repo, id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future deleteBulk(String token, repo, List<QueryItem> filters) {
    // TODO: implement deleteBulk
    throw UnimplementedError();
  }

  @override
  Future find(String token, repo, List<QueryItem> filters) {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future findOne(String token, repo, List<QueryItem> filters) {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future getByID(String token, String repo, String id) {
    // TODO: implement getByID
    throw UnimplementedError();
  }

  @override
  Future increase(String token, repo, id, field, int n) {
    // TODO: implement increase
    throw UnimplementedError();
  }

  @override
  Future<ListResult> list(String token, String repo, ListParams params) {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future search(String token, repo, keywords) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future sudoAddIndex(String token, repo, field) {
    // TODO: implement sudoAddIndex
    throw UnimplementedError();
  }

  @override
  Future sudoCreate(String token, string, body) {
    // TODO: implement sudoCreate
    throw UnimplementedError();
  }

  @override
  Future sudoFind(String token, repo, List<QueryItem> filters, ListParams params) {
    // TODO: implement sudoFind
    throw UnimplementedError();
  }

  @override
  Future sudoGetByID(String token, repo, string) {
    // TODO: implement sudoGetByID
    throw UnimplementedError();
  }

  @override
  Future sudoList(String token, repo, ListParams params) {
    // TODO: implement sudoList
    throw UnimplementedError();
  }

  @override
  Future sudoListRepositories(String token) {
    // TODO: implement sudoListRepositories
    throw UnimplementedError();
  }

  @override
  Future sudoUpdate(String token, repo, string, body) {
    // TODO: implement sudoUpdate
    throw UnimplementedError();
  }

  @override
  Future update(String token, repo, id, body) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future updateBulk(String token, repo, List<QueryItem> filters, List body) {
    // TODO: implement updateBulk
    throw UnimplementedError();
  }
}
