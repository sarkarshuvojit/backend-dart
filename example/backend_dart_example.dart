import 'package:statibackend_dart_client/backend_dart.dart';

void main() {
  var backend = Backend.defaultRegion("public-key");
  print('awesome: ${backend.region}');
}
