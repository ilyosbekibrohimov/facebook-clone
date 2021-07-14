
class Comment{

  String _content;
  String _userName;
  String _photoUrl;


  Comment.create(this._content, this._userName, this._photoUrl);

  String get content => _content;

  String get userName => _userName;

  String get photoUrl => _photoUrl;
}