class User {
  AuthMethod _authMethod = AuthMethod.NONE;
  int _id;
  String _name;
  String _email;
  String _sessionKey;
  String _profileImageUrl;

  User.create(this._authMethod, this._id, this._name, this._email, this._sessionKey, this._profileImageUrl);

  String get profileImageUrl => _profileImageUrl;

  String get sessionKey => _sessionKey;

  String get email => _email;

  String get name => _name;

  int get id => _id;

  AuthMethod get authMethod => _authMethod;
}

enum AuthMethod { NONE, GOOGLE, PHONE }
