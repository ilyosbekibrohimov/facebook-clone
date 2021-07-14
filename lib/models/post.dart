class Post {
  String _title;
  String _content;
  List<int>? _pictureBlob;
  int  _postId;

  Post.create(this._title, this._content, this._pictureBlob, this._postId);

  List<int>? get pictureBlob => _pictureBlob;

  int get postId => _postId;

  String get content => _content;

  String get title => _title;
}
