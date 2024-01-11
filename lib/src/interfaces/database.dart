abstract class IDatabase {
    Future<dynamic> create(String token, repo, body);
    Future<dynamic> createBulk(String token, repo, List<dynamic> bodies);
    Future<ListResult> list(String token, repo, ListParams params);
    Future<dynamic> getByID(String token, repo, id);

    // FindOne returns one document if it's found
    Future<dynamic> findOne(String token, repo, List<QueryItem> filters); 

    // Find returns a slice of matching documents.
    Future<dynamic> find(String token, repo, List<QueryItem> filters);

    // Update updates a document. Can be just a subset of the fields.
    Future<dynamic> update(String token, repo, id, dynamic body);

    // UpdateBulk updates multiple documents based on filter clauses
    Future<dynamic> updateBulk(String token, repo, List<QueryItem> filters, List<dynamic> body);

    // Delete permanently delets a document
    Future<dynamic> delete(String token, repo, id);

    // DeleteBulk permanently deletes multiple documents matching filters
    Future<dynamic> deleteBulk(String token, repo, List<QueryItem> filters); 

    // SudoCreate adds a new document to a repository and returns the created document.
    Future<dynamic> sudoCreate(String token, repo, dynamic body);

    // SudoList returns a list of documents in a specific repository if a "root token" is used.
    Future<dynamic> sudoList(String token, repo, ListParams params );

    // SudoSudoGetByID returns a specific document if a "root token" is provided.
    Future<dynamic> sudoGetByID(String token, repo, string);

    // SudoUpdate perform an update if a "root" token is specified
    // This call cannot be done from JavaScript, only from a backend HTTP call.
    //
    // You can obtain this token via the CLI or web interface.
    Future<dynamic> sudoUpdate(String token, repo, string, dynamic body);

    // SudoFind returns a slice of matching documents if a "root token" is provided.
    Future<dynamic> sudoFind(String token, repo, List<QueryItem> filters, ListParams params);

    // SudoListRepositories lists all database repositories if a "root token" is provided.
    Future<dynamic> sudoListRepositories(String token);

    // Increase increases or decreases a field in a document based on n signed
    Future<dynamic> increase(String token, repo, id, field, int n);

    // SudoAddIndex creates a new database index on a specific field
    Future<dynamic> sudoAddIndex(String token, repo, field);


    // Count returns the number of document in a repo matching the optional
    // filters, which are same query filter as Query.
    Future<dynamic> count(String token, repo, List<QueryItem> filters);

    // Search returns the matching document of "repo" based on keywords
    Future<dynamic> search(String token, repo, keywords);
}

class ListParams {
    final int _page;
    final int _pageSize;
    final bool _descending;

    ListParams(this._page, this._pageSize, this._descending);

    get page => _page;
    get pageSize => _pageSize;
    get descending => _descending;
}

class ListResult {
    final int _page;
    final int _pageSize;
    final int _totalSize;
    final dynamic _results;

    ListResult(this._page, this._pageSize, this._totalSize, this._results);

    get page => _page;
    get pageSize => _pageSize;
    get totalSize => _totalSize;
    get results => _results;
}

enum QueryOperators {
    queryEqual             ("=="),
    queryNotEqual          ( "!="),
    queryLowerThan         ( "<"),
    queryLowerThanEqual    ( "<="),
    queryGreaterThan       ( ">"),
    queryGreaterThanEqual  ( ">="),
    queryIn                ( "in"),
    queryNotIn             ( "!in");

    final String value;

    const QueryOperators(this.value);
}

class QueryItem {
    final String _field;
    final QueryOperators _op;
    final dynamic _value;

    QueryItem(this._field, this._op, this._value);

    get field => _field;
    get op => _op;
    get value => _value;
}
