///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AuthenticateUser_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateUser.Request', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idToken')
    ..hasRequiredFields = false
  ;

  AuthenticateUser_Request._() : super();
  factory AuthenticateUser_Request({
    $core.String? idToken,
  }) {
    final _result = create();
    if (idToken != null) {
      _result.idToken = idToken;
    }
    return _result;
  }
  factory AuthenticateUser_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateUser_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateUser_Request clone() => AuthenticateUser_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateUser_Request copyWith(void Function(AuthenticateUser_Request) updates) => super.copyWith((message) => updates(message as AuthenticateUser_Request)) as AuthenticateUser_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateUser_Request create() => AuthenticateUser_Request._();
  AuthenticateUser_Request createEmptyInstance() => create();
  static $pb.PbList<AuthenticateUser_Request> createRepeated() => $pb.PbList<AuthenticateUser_Request>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateUser_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateUser_Request>(create);
  static AuthenticateUser_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set idToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdToken() => clearField(1);
}

class AuthenticateUser_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateUser.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  AuthenticateUser_Response._() : super();
  factory AuthenticateUser_Response({
    $core.bool? success,
    $core.int? userId,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory AuthenticateUser_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateUser_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateUser_Response clone() => AuthenticateUser_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateUser_Response copyWith(void Function(AuthenticateUser_Response) updates) => super.copyWith((message) => updates(message as AuthenticateUser_Response)) as AuthenticateUser_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateUser_Response create() => AuthenticateUser_Response._();
  AuthenticateUser_Response createEmptyInstance() => create();
  static $pb.PbList<AuthenticateUser_Response> createRepeated() => $pb.PbList<AuthenticateUser_Response>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateUser_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateUser_Response>(create);
  static AuthenticateUser_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AuthenticateUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateUser', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AuthenticateUser._() : super();
  factory AuthenticateUser() => create();
  factory AuthenticateUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateUser clone() => AuthenticateUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateUser copyWith(void Function(AuthenticateUser) updates) => super.copyWith((message) => updates(message as AuthenticateUser)) as AuthenticateUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateUser create() => AuthenticateUser._();
  AuthenticateUser createEmptyInstance() => create();
  static $pb.PbList<AuthenticateUser> createRepeated() => $pb.PbList<AuthenticateUser>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateUser>(create);
  static AuthenticateUser? _defaultInstance;
}

class UploadPost_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadPost.Request', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureBlob', $pb.PbFieldType.OY)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  UploadPost_Request._() : super();
  factory UploadPost_Request({
    $core.String? title,
    $core.String? content,
    $core.List<$core.int>? pictureBlob,
    $core.String? id,
    $core.String? userId,
    $core.String? timestamp,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (pictureBlob != null) {
      _result.pictureBlob = pictureBlob;
    }
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory UploadPost_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadPost_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadPost_Request clone() => UploadPost_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadPost_Request copyWith(void Function(UploadPost_Request) updates) => super.copyWith((message) => updates(message as UploadPost_Request)) as UploadPost_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadPost_Request create() => UploadPost_Request._();
  UploadPost_Request createEmptyInstance() => create();
  static $pb.PbList<UploadPost_Request> createRepeated() => $pb.PbList<UploadPost_Request>();
  @$core.pragma('dart2js:noInline')
  static UploadPost_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadPost_Request>(create);
  static UploadPost_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pictureBlob => $_getN(2);
  @$pb.TagNumber(3)
  set pictureBlob($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPictureBlob() => $_has(2);
  @$pb.TagNumber(3)
  void clearPictureBlob() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get id => $_getSZ(3);
  @$pb.TagNumber(4)
  set id($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userId => $_getSZ(4);
  @$pb.TagNumber(5)
  set userId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get timestamp => $_getSZ(5);
  @$pb.TagNumber(6)
  set timestamp($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);
}

class UploadPost_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadPost.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  UploadPost_Response._() : super();
  factory UploadPost_Response({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory UploadPost_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadPost_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadPost_Response clone() => UploadPost_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadPost_Response copyWith(void Function(UploadPost_Response) updates) => super.copyWith((message) => updates(message as UploadPost_Response)) as UploadPost_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadPost_Response create() => UploadPost_Response._();
  UploadPost_Response createEmptyInstance() => create();
  static $pb.PbList<UploadPost_Response> createRepeated() => $pb.PbList<UploadPost_Response>();
  @$core.pragma('dart2js:noInline')
  static UploadPost_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadPost_Response>(create);
  static UploadPost_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UploadPost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadPost', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UploadPost._() : super();
  factory UploadPost() => create();
  factory UploadPost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadPost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadPost clone() => UploadPost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadPost copyWith(void Function(UploadPost) updates) => super.copyWith((message) => updates(message as UploadPost)) as UploadPost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadPost create() => UploadPost._();
  UploadPost createEmptyInstance() => create();
  static $pb.PbList<UploadPost> createRepeated() => $pb.PbList<UploadPost>();
  @$core.pragma('dart2js:noInline')
  static UploadPost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadPost>(create);
  static UploadPost? _defaultInstance;
}

class FetchPostDetails_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostDetails.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FetchPostDetails_Request._() : super();
  factory FetchPostDetails_Request({
    $core.int? postId,
    $core.int? userId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory FetchPostDetails_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPostDetails_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPostDetails_Request clone() => FetchPostDetails_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPostDetails_Request copyWith(void Function(FetchPostDetails_Request) updates) => super.copyWith((message) => updates(message as FetchPostDetails_Request)) as FetchPostDetails_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchPostDetails_Request create() => FetchPostDetails_Request._();
  FetchPostDetails_Request createEmptyInstance() => create();
  static $pb.PbList<FetchPostDetails_Request> createRepeated() => $pb.PbList<FetchPostDetails_Request>();
  @$core.pragma('dart2js:noInline')
  static FetchPostDetails_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPostDetails_Request>(create);
  static FetchPostDetails_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class FetchPostDetails_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostDetails.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureBlob', $pb.PbFieldType.OY, protoName: 'pictureBlob')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creatorName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creatorPhotoUrl', protoName: 'creator_photoUrl')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfLikes', $pb.PbFieldType.O3, protoName: 'numberOfLikes')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLiked', protoName: 'isLiked')
    ..hasRequiredFields = false
  ;

  FetchPostDetails_Response._() : super();
  factory FetchPostDetails_Response({
    $core.bool? success,
    $core.String? title,
    $core.String? content,
    $core.List<$core.int>? pictureBlob,
    $core.String? creatorName,
    $core.String? creatorPhotoUrl,
    $core.int? numberOfLikes,
    $core.int? userId,
    $core.bool? isLiked,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (pictureBlob != null) {
      _result.pictureBlob = pictureBlob;
    }
    if (creatorName != null) {
      _result.creatorName = creatorName;
    }
    if (creatorPhotoUrl != null) {
      _result.creatorPhotoUrl = creatorPhotoUrl;
    }
    if (numberOfLikes != null) {
      _result.numberOfLikes = numberOfLikes;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (isLiked != null) {
      _result.isLiked = isLiked;
    }
    return _result;
  }
  factory FetchPostDetails_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPostDetails_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPostDetails_Response clone() => FetchPostDetails_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPostDetails_Response copyWith(void Function(FetchPostDetails_Response) updates) => super.copyWith((message) => updates(message as FetchPostDetails_Response)) as FetchPostDetails_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchPostDetails_Response create() => FetchPostDetails_Response._();
  FetchPostDetails_Response createEmptyInstance() => create();
  static $pb.PbList<FetchPostDetails_Response> createRepeated() => $pb.PbList<FetchPostDetails_Response>();
  @$core.pragma('dart2js:noInline')
  static FetchPostDetails_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPostDetails_Response>(create);
  static FetchPostDetails_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pictureBlob => $_getN(3);
  @$pb.TagNumber(4)
  set pictureBlob($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPictureBlob() => $_has(3);
  @$pb.TagNumber(4)
  void clearPictureBlob() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get creatorName => $_getSZ(4);
  @$pb.TagNumber(5)
  set creatorName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatorName() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatorName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get creatorPhotoUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set creatorPhotoUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatorPhotoUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatorPhotoUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get numberOfLikes => $_getIZ(6);
  @$pb.TagNumber(7)
  set numberOfLikes($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNumberOfLikes() => $_has(6);
  @$pb.TagNumber(7)
  void clearNumberOfLikes() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get userId => $_getIZ(7);
  @$pb.TagNumber(8)
  set userId($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserId() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isLiked => $_getBF(8);
  @$pb.TagNumber(9)
  set isLiked($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsLiked() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsLiked() => clearField(9);
}

class FetchPostDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostDetails', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FetchPostDetails._() : super();
  factory FetchPostDetails() => create();
  factory FetchPostDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPostDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPostDetails clone() => FetchPostDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPostDetails copyWith(void Function(FetchPostDetails) updates) => super.copyWith((message) => updates(message as FetchPostDetails)) as FetchPostDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchPostDetails create() => FetchPostDetails._();
  FetchPostDetails createEmptyInstance() => create();
  static $pb.PbList<FetchPostDetails> createRepeated() => $pb.PbList<FetchPostDetails>();
  @$core.pragma('dart2js:noInline')
  static FetchPostDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPostDetails>(create);
  static FetchPostDetails? _defaultInstance;
}

class FetchPostsByPage_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostsByPage.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageNumber', $pb.PbFieldType.O3, protoName: 'pageNumber')
    ..hasRequiredFields = false
  ;

  FetchPostsByPage_Request._() : super();
  factory FetchPostsByPage_Request({
    $core.int? pageNumber,
  }) {
    final _result = create();
    if (pageNumber != null) {
      _result.pageNumber = pageNumber;
    }
    return _result;
  }
  factory FetchPostsByPage_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPostsByPage_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPostsByPage_Request clone() => FetchPostsByPage_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPostsByPage_Request copyWith(void Function(FetchPostsByPage_Request) updates) => super.copyWith((message) => updates(message as FetchPostsByPage_Request)) as FetchPostsByPage_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchPostsByPage_Request create() => FetchPostsByPage_Request._();
  FetchPostsByPage_Request createEmptyInstance() => create();
  static $pb.PbList<FetchPostsByPage_Request> createRepeated() => $pb.PbList<FetchPostsByPage_Request>();
  @$core.pragma('dart2js:noInline')
  static FetchPostsByPage_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPostsByPage_Request>(create);
  static FetchPostsByPage_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageNumber($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageNumber() => clearField(1);
}

class FetchPostsByPage_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostsByPage.Response', createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.P3)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..p<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureBlob', $pb.PbFieldType.PY, protoName: 'pictureBlob')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creatorNames')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creatorsPhotoUrl')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  FetchPostsByPage_Response._() : super();
  factory FetchPostsByPage_Response({
    $core.Iterable<$core.int>? id,
    $core.Iterable<$core.String>? title,
    $core.Iterable<$core.String>? content,
    $core.Iterable<$core.List<$core.int>>? pictureBlob,
    $core.Iterable<$core.String>? creatorNames,
    $core.Iterable<$core.String>? creatorsPhotoUrl,
    $core.bool? success,
  }) {
    final _result = create();
    if (id != null) {
      _result.id.addAll(id);
    }
    if (title != null) {
      _result.title.addAll(title);
    }
    if (content != null) {
      _result.content.addAll(content);
    }
    if (pictureBlob != null) {
      _result.pictureBlob.addAll(pictureBlob);
    }
    if (creatorNames != null) {
      _result.creatorNames.addAll(creatorNames);
    }
    if (creatorsPhotoUrl != null) {
      _result.creatorsPhotoUrl.addAll(creatorsPhotoUrl);
    }
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory FetchPostsByPage_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPostsByPage_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPostsByPage_Response clone() => FetchPostsByPage_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPostsByPage_Response copyWith(void Function(FetchPostsByPage_Response) updates) => super.copyWith((message) => updates(message as FetchPostsByPage_Response)) as FetchPostsByPage_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchPostsByPage_Response create() => FetchPostsByPage_Response._();
  FetchPostsByPage_Response createEmptyInstance() => create();
  static $pb.PbList<FetchPostsByPage_Response> createRepeated() => $pb.PbList<FetchPostsByPage_Response>();
  @$core.pragma('dart2js:noInline')
  static FetchPostsByPage_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPostsByPage_Response>(create);
  static FetchPostsByPage_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get title => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get content => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get pictureBlob => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get creatorNames => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get creatorsPhotoUrl => $_getList(5);

  @$pb.TagNumber(7)
  $core.bool get success => $_getBF(6);
  @$pb.TagNumber(7)
  set success($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSuccess() => $_has(6);
  @$pb.TagNumber(7)
  void clearSuccess() => clearField(7);
}

class FetchPostsByPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostsByPage', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FetchPostsByPage._() : super();
  factory FetchPostsByPage() => create();
  factory FetchPostsByPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchPostsByPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchPostsByPage clone() => FetchPostsByPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchPostsByPage copyWith(void Function(FetchPostsByPage) updates) => super.copyWith((message) => updates(message as FetchPostsByPage)) as FetchPostsByPage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchPostsByPage create() => FetchPostsByPage._();
  FetchPostsByPage createEmptyInstance() => create();
  static $pb.PbList<FetchPostsByPage> createRepeated() => $pb.PbList<FetchPostsByPage>();
  @$core.pragma('dart2js:noInline')
  static FetchPostsByPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchPostsByPage>(create);
  static FetchPostsByPage? _defaultInstance;
}

class FetchCommentsByPost_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchCommentsByPost.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FetchCommentsByPost_Request._() : super();
  factory FetchCommentsByPost_Request({
    $core.int? postId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    return _result;
  }
  factory FetchCommentsByPost_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCommentsByPost_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCommentsByPost_Request clone() => FetchCommentsByPost_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCommentsByPost_Request copyWith(void Function(FetchCommentsByPost_Request) updates) => super.copyWith((message) => updates(message as FetchCommentsByPost_Request)) as FetchCommentsByPost_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCommentsByPost_Request create() => FetchCommentsByPost_Request._();
  FetchCommentsByPost_Request createEmptyInstance() => create();
  static $pb.PbList<FetchCommentsByPost_Request> createRepeated() => $pb.PbList<FetchCommentsByPost_Request>();
  @$core.pragma('dart2js:noInline')
  static FetchCommentsByPost_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCommentsByPost_Request>(create);
  static FetchCommentsByPost_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class FetchCommentsByPost_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchCommentsByPost.Response', createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPhotoUrl', protoName: 'userPhotoUrl')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  FetchCommentsByPost_Response._() : super();
  factory FetchCommentsByPost_Response({
    $core.Iterable<$core.String>? content,
    $core.Iterable<$core.String>? userPhotoUrl,
    $core.Iterable<$core.String>? userName,
    $core.bool? success,
  }) {
    final _result = create();
    if (content != null) {
      _result.content.addAll(content);
    }
    if (userPhotoUrl != null) {
      _result.userPhotoUrl.addAll(userPhotoUrl);
    }
    if (userName != null) {
      _result.userName.addAll(userName);
    }
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory FetchCommentsByPost_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCommentsByPost_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCommentsByPost_Response clone() => FetchCommentsByPost_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCommentsByPost_Response copyWith(void Function(FetchCommentsByPost_Response) updates) => super.copyWith((message) => updates(message as FetchCommentsByPost_Response)) as FetchCommentsByPost_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCommentsByPost_Response create() => FetchCommentsByPost_Response._();
  FetchCommentsByPost_Response createEmptyInstance() => create();
  static $pb.PbList<FetchCommentsByPost_Response> createRepeated() => $pb.PbList<FetchCommentsByPost_Response>();
  @$core.pragma('dart2js:noInline')
  static FetchCommentsByPost_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCommentsByPost_Response>(create);
  static FetchCommentsByPost_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get content => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get userPhotoUrl => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get userName => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get success => $_getBF(3);
  @$pb.TagNumber(4)
  set success($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuccess() => clearField(4);
}

class FetchCommentsByPost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchCommentsByPost', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FetchCommentsByPost._() : super();
  factory FetchCommentsByPost() => create();
  factory FetchCommentsByPost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCommentsByPost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCommentsByPost clone() => FetchCommentsByPost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCommentsByPost copyWith(void Function(FetchCommentsByPost) updates) => super.copyWith((message) => updates(message as FetchCommentsByPost)) as FetchCommentsByPost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCommentsByPost create() => FetchCommentsByPost._();
  FetchCommentsByPost createEmptyInstance() => create();
  static $pb.PbList<FetchCommentsByPost> createRepeated() => $pb.PbList<FetchCommentsByPost>();
  @$core.pragma('dart2js:noInline')
  static FetchCommentsByPost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCommentsByPost>(create);
  static FetchCommentsByPost? _defaultInstance;
}

class CreateComment_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateComment.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  CreateComment_Request._() : super();
  factory CreateComment_Request({
    $core.int? id,
    $core.int? postId,
    $core.int? userId,
    $core.String? content,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (postId != null) {
      _result.postId = postId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory CreateComment_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateComment_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateComment_Request clone() => CreateComment_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateComment_Request copyWith(void Function(CreateComment_Request) updates) => super.copyWith((message) => updates(message as CreateComment_Request)) as CreateComment_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateComment_Request create() => CreateComment_Request._();
  CreateComment_Request createEmptyInstance() => create();
  static $pb.PbList<CreateComment_Request> createRepeated() => $pb.PbList<CreateComment_Request>();
  @$core.pragma('dart2js:noInline')
  static CreateComment_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateComment_Request>(create);
  static CreateComment_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get postId => $_getIZ(1);
  @$pb.TagNumber(2)
  set postId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
}

class CreateComment_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateComment.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  CreateComment_Response._() : super();
  factory CreateComment_Response({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory CreateComment_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateComment_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateComment_Response clone() => CreateComment_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateComment_Response copyWith(void Function(CreateComment_Response) updates) => super.copyWith((message) => updates(message as CreateComment_Response)) as CreateComment_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateComment_Response create() => CreateComment_Response._();
  CreateComment_Response createEmptyInstance() => create();
  static $pb.PbList<CreateComment_Response> createRepeated() => $pb.PbList<CreateComment_Response>();
  @$core.pragma('dart2js:noInline')
  static CreateComment_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateComment_Response>(create);
  static CreateComment_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class CreateComment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateComment', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CreateComment._() : super();
  factory CreateComment() => create();
  factory CreateComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateComment clone() => CreateComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateComment copyWith(void Function(CreateComment) updates) => super.copyWith((message) => updates(message as CreateComment)) as CreateComment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateComment create() => CreateComment._();
  CreateComment createEmptyInstance() => create();
  static $pb.PbList<CreateComment> createRepeated() => $pb.PbList<CreateComment>();
  @$core.pragma('dart2js:noInline')
  static CreateComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateComment>(create);
  static CreateComment? _defaultInstance;
}

class LikePost_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LikePost.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  LikePost_Request._() : super();
  factory LikePost_Request({
    $core.int? postId,
    $core.int? userId,
    $core.String? timestamp,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory LikePost_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikePost_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikePost_Request clone() => LikePost_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikePost_Request copyWith(void Function(LikePost_Request) updates) => super.copyWith((message) => updates(message as LikePost_Request)) as LikePost_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikePost_Request create() => LikePost_Request._();
  LikePost_Request createEmptyInstance() => create();
  static $pb.PbList<LikePost_Request> createRepeated() => $pb.PbList<LikePost_Request>();
  @$core.pragma('dart2js:noInline')
  static LikePost_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikePost_Request>(create);
  static LikePost_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get timestamp => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

class LikePost_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LikePost.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  LikePost_Response._() : super();
  factory LikePost_Response({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory LikePost_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikePost_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikePost_Response clone() => LikePost_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikePost_Response copyWith(void Function(LikePost_Response) updates) => super.copyWith((message) => updates(message as LikePost_Response)) as LikePost_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikePost_Response create() => LikePost_Response._();
  LikePost_Response createEmptyInstance() => create();
  static $pb.PbList<LikePost_Response> createRepeated() => $pb.PbList<LikePost_Response>();
  @$core.pragma('dart2js:noInline')
  static LikePost_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikePost_Response>(create);
  static LikePost_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class LikePost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LikePost', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LikePost._() : super();
  factory LikePost() => create();
  factory LikePost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LikePost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LikePost clone() => LikePost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LikePost copyWith(void Function(LikePost) updates) => super.copyWith((message) => updates(message as LikePost)) as LikePost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikePost create() => LikePost._();
  LikePost createEmptyInstance() => create();
  static $pb.PbList<LikePost> createRepeated() => $pb.PbList<LikePost>();
  @$core.pragma('dart2js:noInline')
  static LikePost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikePost>(create);
  static LikePost? _defaultInstance;
}

class UnlikePost_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlikePost.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  UnlikePost_Request._() : super();
  factory UnlikePost_Request({
    $core.int? postId,
    $core.int? userId,
    $core.String? timestamp,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory UnlikePost_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlikePost_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlikePost_Request clone() => UnlikePost_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlikePost_Request copyWith(void Function(UnlikePost_Request) updates) => super.copyWith((message) => updates(message as UnlikePost_Request)) as UnlikePost_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlikePost_Request create() => UnlikePost_Request._();
  UnlikePost_Request createEmptyInstance() => create();
  static $pb.PbList<UnlikePost_Request> createRepeated() => $pb.PbList<UnlikePost_Request>();
  @$core.pragma('dart2js:noInline')
  static UnlikePost_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlikePost_Request>(create);
  static UnlikePost_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get timestamp => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

class UnlikePost_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlikePost.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  UnlikePost_Response._() : super();
  factory UnlikePost_Response({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory UnlikePost_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlikePost_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlikePost_Response clone() => UnlikePost_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlikePost_Response copyWith(void Function(UnlikePost_Response) updates) => super.copyWith((message) => updates(message as UnlikePost_Response)) as UnlikePost_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlikePost_Response create() => UnlikePost_Response._();
  UnlikePost_Response createEmptyInstance() => create();
  static $pb.PbList<UnlikePost_Response> createRepeated() => $pb.PbList<UnlikePost_Response>();
  @$core.pragma('dart2js:noInline')
  static UnlikePost_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlikePost_Response>(create);
  static UnlikePost_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class UnlikePost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlikePost', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnlikePost._() : super();
  factory UnlikePost() => create();
  factory UnlikePost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlikePost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlikePost clone() => UnlikePost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlikePost copyWith(void Function(UnlikePost) updates) => super.copyWith((message) => updates(message as UnlikePost)) as UnlikePost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlikePost create() => UnlikePost._();
  UnlikePost createEmptyInstance() => create();
  static $pb.PbList<UnlikePost> createRepeated() => $pb.PbList<UnlikePost>();
  @$core.pragma('dart2js:noInline')
  static UnlikePost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlikePost>(create);
  static UnlikePost? _defaultInstance;
}

class EditPost_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditPost.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureBlob', $pb.PbFieldType.OY, protoName: 'pictureBlob')
    ..hasRequiredFields = false
  ;

  EditPost_Request._() : super();
  factory EditPost_Request({
    $core.int? userId,
    $core.int? postId,
    $core.String? title,
    $core.String? content,
    $core.List<$core.int>? pictureBlob,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (postId != null) {
      _result.postId = postId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (content != null) {
      _result.content = content;
    }
    if (pictureBlob != null) {
      _result.pictureBlob = pictureBlob;
    }
    return _result;
  }
  factory EditPost_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPost_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditPost_Request clone() => EditPost_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditPost_Request copyWith(void Function(EditPost_Request) updates) => super.copyWith((message) => updates(message as EditPost_Request)) as EditPost_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPost_Request create() => EditPost_Request._();
  EditPost_Request createEmptyInstance() => create();
  static $pb.PbList<EditPost_Request> createRepeated() => $pb.PbList<EditPost_Request>();
  @$core.pragma('dart2js:noInline')
  static EditPost_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPost_Request>(create);
  static EditPost_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get postId => $_getIZ(1);
  @$pb.TagNumber(2)
  set postId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pictureBlob => $_getN(4);
  @$pb.TagNumber(5)
  set pictureBlob($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPictureBlob() => $_has(4);
  @$pb.TagNumber(5)
  void clearPictureBlob() => clearField(5);
}

class EditPost_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditPost.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  EditPost_Response._() : super();
  factory EditPost_Response({
    $core.bool? success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory EditPost_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPost_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditPost_Response clone() => EditPost_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditPost_Response copyWith(void Function(EditPost_Response) updates) => super.copyWith((message) => updates(message as EditPost_Response)) as EditPost_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPost_Response create() => EditPost_Response._();
  EditPost_Response createEmptyInstance() => create();
  static $pb.PbList<EditPost_Response> createRepeated() => $pb.PbList<EditPost_Response>();
  @$core.pragma('dart2js:noInline')
  static EditPost_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPost_Response>(create);
  static EditPost_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class EditPost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditPost', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EditPost._() : super();
  factory EditPost() => create();
  factory EditPost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditPost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditPost clone() => EditPost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditPost copyWith(void Function(EditPost) updates) => super.copyWith((message) => updates(message as EditPost)) as EditPost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditPost create() => EditPost._();
  EditPost createEmptyInstance() => create();
  static $pb.PbList<EditPost> createRepeated() => $pb.PbList<EditPost>();
  @$core.pragma('dart2js:noInline')
  static EditPost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditPost>(create);
  static EditPost? _defaultInstance;
}

