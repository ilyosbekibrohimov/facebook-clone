class Post {
  String _title;
  String _content;
  List<int>? _pictureBlob;

  Post.create(this._title, this._content, this._pictureBlob);

  List<int>? get pictureBlob => _pictureBlob;

  String get content => _content;

  String get title => _title;
}
