
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:statibackend_dart_client/backend_dart.dart';
import 'package:statibackend_dart_client/src/api_client.dart';
import 'package:test/test.dart';
import 'account_test.mocks.dart' as test_mocks;


@GenerateMocks([http.Client])
void main() {
  group('Testing Accounts', () {

    test('Default Region Constructor should mark region as na1', () async {
      final mockClient = test_mocks.MockClient();
      final mockJwt = "eyfirstpart.second.third";
      final mockEmail = "shuvojit@test.com";
      final mockPassword = "shuvojit";
      Backend backend = Backend.forTest(
        "your-pub-key", 
        "whatevs", 
        ApiClient.custom(mockClient, "http://testbaseurl/")
      );
      
      when(
        mockClient.post(Uri.parse("http://testbaseurl/register"), body: jsonEncode({
          "email": mockEmail,
          "password": mockPassword
        }), headers: null, encoding: null)
      ).thenAnswer((_) async => http.Response(mockJwt, 200));

      expect(await backend.register(mockEmail, mockPassword), mockJwt);
    });

  });
}
