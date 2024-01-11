import '../api_client.dart';
import '../interfaces/database.dart';

class Database implements IDatabase {
  final ApiClient _apiClient;
  final Map<String, String> _commonHeaders;

  Database(this._apiClient, this._commonHeaders);

  @override
  Future count(String token, repo, List<QueryItem> filters) {
    return _apiClient .post("db/count/$repo", 
      body: filters, 
      headers: _commonHeaders
    );
  }

  @override
  Future create(String token, repo, body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future createBulk(String token, repo, List bodies) {
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
  Future getByID(String token, repo, id) {
    // TODO: implement getByID
    throw UnimplementedError();
  }

  @override
  Future increase(String token, repo, id, field, int n) {
    // TODO: implement increase
    throw UnimplementedError();
  }

  @override
  Future<ListResult> list(String token, repo, ListParams params) {
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
  Future sudoCreate(String token, repo, body) {
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
