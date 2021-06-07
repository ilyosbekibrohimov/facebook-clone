///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UploadPost_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadPost.Request', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureBlob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadPost_Request._() : super();
  factory UploadPost_Request({
    $core.String? title,
    $core.String? content,
    $core.List<$core.int>? pictureBlob,
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
    ..hasRequiredFields = false
  ;

  FetchPostDetails_Request._() : super();
  factory FetchPostDetails_Request({
    $core.int? postId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
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
}

class FetchPostDetails_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchPostDetails.Response', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureBlob', $pb.PbFieldType.OY, protoName: 'pictureBlob')
    ..hasRequiredFields = false
  ;

  FetchPostDetails_Response._() : super();
  factory FetchPostDetails_Response({
    $core.bool? success,
    $core.String? title,
    $core.String? content,
    $core.List<$core.int>? pictureBlob,
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

class FetchKPostIds_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchKPostIds.Request', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'k', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  FetchKPostIds_Request._() : super();
  factory FetchKPostIds_Request({
    $core.int? k,
  }) {
    final _result = create();
    if (k != null) {
      _result.k = k;
    }
    return _result;
  }
  factory FetchKPostIds_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchKPostIds_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchKPostIds_Request clone() => FetchKPostIds_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchKPostIds_Request copyWith(void Function(FetchKPostIds_Request) updates) => super.copyWith((message) => updates(message as FetchKPostIds_Request)) as FetchKPostIds_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchKPostIds_Request create() => FetchKPostIds_Request._();
  FetchKPostIds_Request createEmptyInstance() => create();
  static $pb.PbList<FetchKPostIds_Request> createRepeated() => $pb.PbList<FetchKPostIds_Request>();
  @$core.pragma('dart2js:noInline')
  static FetchKPostIds_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchKPostIds_Request>(create);
  static FetchKPostIds_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get k => $_getIZ(0);
  @$pb.TagNumber(1)
  set k($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasK() => $_has(0);
  @$pb.TagNumber(1)
  void clearK() => clearField(1);
}

class FetchKPostIds_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchKPostIds.Response', createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  FetchKPostIds_Response._() : super();
  factory FetchKPostIds_Response({
    $core.Iterable<$core.int>? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id.addAll(id);
    }
    return _result;
  }
  factory FetchKPostIds_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchKPostIds_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchKPostIds_Response clone() => FetchKPostIds_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchKPostIds_Response copyWith(void Function(FetchKPostIds_Response) updates) => super.copyWith((message) => updates(message as FetchKPostIds_Response)) as FetchKPostIds_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchKPostIds_Response create() => FetchKPostIds_Response._();
  FetchKPostIds_Response createEmptyInstance() => create();
  static $pb.PbList<FetchKPostIds_Response> createRepeated() => $pb.PbList<FetchKPostIds_Response>();
  @$core.pragma('dart2js:noInline')
  static FetchKPostIds_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchKPostIds_Response>(create);
  static FetchKPostIds_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getList(0);
}

class FetchKPostIds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchKPostIds', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FetchKPostIds._() : super();
  factory FetchKPostIds() => create();
  factory FetchKPostIds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchKPostIds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchKPostIds clone() => FetchKPostIds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchKPostIds copyWith(void Function(FetchKPostIds) updates) => super.copyWith((message) => updates(message as FetchKPostIds)) as FetchKPostIds; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchKPostIds create() => FetchKPostIds._();
  FetchKPostIds createEmptyInstance() => create();
  static $pb.PbList<FetchKPostIds> createRepeated() => $pb.PbList<FetchKPostIds>();
  @$core.pragma('dart2js:noInline')
  static FetchKPostIds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchKPostIds>(create);
  static FetchKPostIds? _defaultInstance;
}

