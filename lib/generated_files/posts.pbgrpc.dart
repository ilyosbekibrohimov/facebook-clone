///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'posts.pb.dart' as $0;
export 'posts.pb.dart';

class PostServiceClient extends $grpc.Client {
  static final _$uploadPost =
      $grpc.ClientMethod<$0.UploadPost_Request, $0.UploadPost_Response>(
          '/PostService/uploadPost',
          ($0.UploadPost_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UploadPost_Response.fromBuffer(value));
  static final _$fetchPostDetails = $grpc.ClientMethod<
          $0.FetchPostDetails_Request, $0.FetchPostDetails_Response>(
      '/PostService/fetchPostDetails',
      ($0.FetchPostDetails_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.FetchPostDetails_Response.fromBuffer(value));
  static final _$fetchPosts =
      $grpc.ClientMethod<$0.FetchKPosts_Request, $0.FetchKPosts_Response>(
          '/PostService/fetchPosts',
          ($0.FetchKPosts_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FetchKPosts_Response.fromBuffer(value));

  PostServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UploadPost_Response> uploadPost(
      $0.UploadPost_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadPost, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchPostDetails_Response> fetchPostDetails(
      $0.FetchPostDetails_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchPostDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchKPosts_Response> fetchPosts(
      $0.FetchKPosts_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchPosts, request, options: options);
  }
}

abstract class PostServiceBase extends $grpc.Service {
  $core.String get $name => 'PostService';

  PostServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.UploadPost_Request, $0.UploadPost_Response>(
            'uploadPost',
            uploadPost_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UploadPost_Request.fromBuffer(value),
            ($0.UploadPost_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchPostDetails_Request,
            $0.FetchPostDetails_Response>(
        'fetchPostDetails',
        fetchPostDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FetchPostDetails_Request.fromBuffer(value),
        ($0.FetchPostDetails_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.FetchKPosts_Request, $0.FetchKPosts_Response>(
            'fetchPosts',
            fetchPosts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.FetchKPosts_Request.fromBuffer(value),
            ($0.FetchKPosts_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.UploadPost_Response> uploadPost_Pre($grpc.ServiceCall call,
      $async.Future<$0.UploadPost_Request> request) async {
    return uploadPost(call, await request);
  }

  $async.Future<$0.FetchPostDetails_Response> fetchPostDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FetchPostDetails_Request> request) async {
    return fetchPostDetails(call, await request);
  }

  $async.Future<$0.FetchKPosts_Response> fetchPosts_Pre($grpc.ServiceCall call,
      $async.Future<$0.FetchKPosts_Request> request) async {
    return fetchPosts(call, await request);
  }

  $async.Future<$0.UploadPost_Response> uploadPost(
      $grpc.ServiceCall call, $0.UploadPost_Request request);
  $async.Future<$0.FetchPostDetails_Response> fetchPostDetails(
      $grpc.ServiceCall call, $0.FetchPostDetails_Request request);
  $async.Future<$0.FetchKPosts_Response> fetchPosts(
      $grpc.ServiceCall call, $0.FetchKPosts_Request request);
}
