// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Backend {
  String _publicKey;
  String _region;

  Backend(this._publicKey, this._region);

  String get publicKey => _publicKey;
  String get region => _region;
}
