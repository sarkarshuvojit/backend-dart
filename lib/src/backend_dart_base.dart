import 'package:statibackend_dart_client/src/api_client.dart';

import 'modules/account.dart';

class Backend {
  String _baseURL = "https://na1.staticbackend.com";
  final String _publicKey;
  final String _region;
  late ApiClient _apiClient;
  Map<String, String> commonHeaders = {};

  late Account account;

  Backend(this._publicKey, this._region) {
    _setBaseURL(region);
    _initAPIClient();
    _setDefaultHeaders(_publicKey);
    _initSubmodules();
  }

  Backend.forTest(this._publicKey, this._region, this._apiClient) {
    _setBaseURL(region);
    _setDefaultHeaders(_publicKey);
    _initSubmodules();
  }

  Backend.defaultRegion(this._publicKey): _region = "na1" {
    _setBaseURL(region);
    _initAPIClient();
    _setDefaultHeaders(_publicKey);
    _initSubmodules();
  }

  void _initSubmodules() {
    account = Account(_apiClient, commonHeaders);
  }

  void _initAPIClient() {
    _apiClient = ApiClient(baseUrl: _baseURL);
  }

  void _setBaseURL(String region) {
    if (region == 'dev') {
        _baseURL = "http://localhost:8099/";
    } else if (region.length > 3) {
        // for self-hosted base URL
        _baseURL = region;
    } else {
        _baseURL = "https://$region.staticbackend.com/";
    }
  }

  void _setDefaultHeaders(String publicKey) {
    commonHeaders["SB-PUBLIC-KEY"] = publicKey;
  }

  String get region => _region;


}
