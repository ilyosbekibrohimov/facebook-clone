///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Number extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Number', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Number._() : super();
  factory Number({
    $core.double? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Number.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Number.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Number clone() => Number()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Number copyWith(void Function(Number) updates) => super.copyWith((message) => updates(message as Number)) as Number; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Number create() => Number._();
  Number createEmptyInstance() => create();
  static $pb.PbList<Number> createRepeated() => $pb.PbList<Number>();
  @$core.pragma('dart2js:noInline')
  static Number getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Number>(create);
  static Number? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class MyCalc_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyCalc.Request', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number1', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number2', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  MyCalc_Request._() : super();
  factory MyCalc_Request({
    $core.double? number1,
    $core.double? number2,
  }) {
    final _result = create();
    if (number1 != null) {
      _result.number1 = number1;
    }
    if (number2 != null) {
      _result.number2 = number2;
    }
    return _result;
  }
  factory MyCalc_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyCalc_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyCalc_Request clone() => MyCalc_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyCalc_Request copyWith(void Function(MyCalc_Request) updates) => super.copyWith((message) => updates(message as MyCalc_Request)) as MyCalc_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyCalc_Request create() => MyCalc_Request._();
  MyCalc_Request createEmptyInstance() => create();
  static $pb.PbList<MyCalc_Request> createRepeated() => $pb.PbList<MyCalc_Request>();
  @$core.pragma('dart2js:noInline')
  static MyCalc_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyCalc_Request>(create);
  static MyCalc_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get number1 => $_getN(0);
  @$pb.TagNumber(1)
  set number1($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber1() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber1() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get number2 => $_getN(1);
  @$pb.TagNumber(2)
  set number2($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber2() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber2() => clearField(2);
}

class MyCalc_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyCalc.Response', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  MyCalc_Response._() : super();
  factory MyCalc_Response({
    $core.double? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory MyCalc_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyCalc_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyCalc_Response clone() => MyCalc_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyCalc_Response copyWith(void Function(MyCalc_Response) updates) => super.copyWith((message) => updates(message as MyCalc_Response)) as MyCalc_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyCalc_Response create() => MyCalc_Response._();
  MyCalc_Response createEmptyInstance() => create();
  static $pb.PbList<MyCalc_Response> createRepeated() => $pb.PbList<MyCalc_Response>();
  @$core.pragma('dart2js:noInline')
  static MyCalc_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyCalc_Response>(create);
  static MyCalc_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class MyCalc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MyCalc', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MyCalc._() : super();
  factory MyCalc() => create();
  factory MyCalc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyCalc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyCalc clone() => MyCalc()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyCalc copyWith(void Function(MyCalc) updates) => super.copyWith((message) => updates(message as MyCalc)) as MyCalc; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyCalc create() => MyCalc._();
  MyCalc createEmptyInstance() => create();
  static $pb.PbList<MyCalc> createRepeated() => $pb.PbList<MyCalc>();
  @$core.pragma('dart2js:noInline')
  static MyCalc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyCalc>(create);
  static MyCalc? _defaultInstance;
}

