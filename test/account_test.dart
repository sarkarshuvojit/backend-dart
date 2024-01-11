
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:statibackend_dart_client/backend_dart.dart';
import 'package:statibackend_dart_client/src/api_client.dart';
import 'package:test/test.dart';
import 'account_test.mocks.dart' as test_mocks;


final mockPublicKey = "fakePpublicKey";

Backend getMockBackendFromMockClient(test_mocks.MockClient mockClient) {
  return Backend.forTest(
        mockPublicKey,
        "dev", 
        ApiClient.custom(mockClient, "http://testbaseurl/")
      );
}

@GenerateMocks([http.Client])
void main() {
  group('Testing Accounts APIs', () {

    test('Regiser should call /register with correct credentials', () async {
      final mockClient = test_mocks.MockClient();
      final mockJwt = "eyfirstpart.second.third";
      final mockEmail = "shuvojit@test.com";
      final mockPassword = "shuvojit";
      Backend backend = getMockBackendFromMockClient(mockClient);      

      when(
        mockClient.post(
          Uri.parse("http://testbaseurl/register"), 
          body: jsonEncode({
            "email": mockEmail,
            "password": mockPassword
          }), 
          headers: {
            "SB-PUBLIC-KEY": mockPublicKey
          }, 
          encoding: null
        )
      ).thenAnswer((_) async => http.Response(mockJwt, 200));

      expect(await backend.register(mockEmail, mockPassword), mockJwt);
    });

  });
}
