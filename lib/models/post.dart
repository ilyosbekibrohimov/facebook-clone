class Post {
  int?  _postId;
  String? _title;
  String? _content;
  List<int>? _pictureBlob;
  String? _userName;
  String?  _userPhotoUrl;
  int?  _numberOfLikes;
  bool isLiked;
  Post.create(this._title, this._content, this._pictureBlob, this._postId,  this._userName,  this._userPhotoUrl, this._numberOfLikes,  this.isLiked);

  List<int>? get pictureBlob => _pictureBlob;

  int? get postId => _postId;

  String? get content => _content;

  String? get userName => _userName;

  String? get title => _title;

  String? get userPhotoUrl => _userPhotoUrl;

  int? get numberOfLikes => _numberOfLikes;



}
