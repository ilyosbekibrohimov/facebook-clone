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
  static final _$authenticateUser = $grpc.ClientMethod<
          $0.AuthenticateUser_Request, $0.AuthenticateUser_Response>(
      '/PostService/authenticateUser',
      ($0.AuthenticateUser_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AuthenticateUser_Response.fromBuffer(value));
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
  static final _$fetchPosts = $grpc.ClientMethod<$0.FetchPostsByPage_Request,
          $0.FetchPostsByPage_Response>(
      '/PostService/fetchPosts',
      ($0.FetchPostsByPage_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.FetchPostsByPage_Response.fromBuffer(value));
  static final _$createComment =
      $grpc.ClientMethod<$0.CreateComment_Request, $0.CreateComment_Response>(
          '/PostService/createComment',
          ($0.CreateComment_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateComment_Response.fromBuffer(value));
  static final _$fetchComments = $grpc.ClientMethod<
          $0.FetchCommentsByPost_Request, $0.FetchCommentsByPost_Response>(
      '/PostService/fetchComments',
      ($0.FetchCommentsByPost_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.FetchCommentsByPost_Response.fromBuffer(value));
  static final _$likePost =
      $grpc.ClientMethod<$0.LikePost_Request, $0.LikePost_Response>(
          '/PostService/likePost',
          ($0.LikePost_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LikePost_Response.fromBuffer(value));
  static final _$unlikePost =
      $grpc.ClientMethod<$0.UnlikePost_Request, $0.UnlikePost_Response>(
          '/PostService/unlikePost',
          ($0.UnlikePost_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UnlikePost_Response.fromBuffer(value));
  static final _$editPost =
      $grpc.ClientMethod<$0.EditPost_Request, $0.EditPost_Response>(
          '/PostService/editPost',
          ($0.EditPost_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EditPost_Response.fromBuffer(value));

  PostServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthenticateUser_Response> authenticateUser(
      $0.AuthenticateUser_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticateUser, request, options: options);
  }

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

  $grpc.ResponseFuture<$0.FetchPostsByPage_Response> fetchPosts(
      $0.FetchPostsByPage_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchPosts, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateComment_Response> createComment(
      $0.CreateComment_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchCommentsByPost_Response> fetchComments(
      $0.FetchCommentsByPost_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchComments, request, options: options);
  }

  $grpc.ResponseFuture<$0.LikePost_Response> likePost(
      $0.LikePost_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$likePost, request, options: options);
  }

  $grpc.ResponseFuture<$0.UnlikePost_Response> unlikePost(
      $0.UnlikePost_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unlikePost, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditPost_Response> editPost(
      $0.EditPost_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editPost, request, options: options);
  }
}

abstract class PostServiceBase extends $grpc.Service {
  $core.String get $name => 'PostService';

  PostServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthenticateUser_Request,
            $0.AuthenticateUser_Response>(
        'authenticateUser',
        authenticateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticateUser_Request.fromBuffer(value),
        ($0.AuthenticateUser_Response value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.FetchPostsByPage_Request,
            $0.FetchPostsByPage_Response>(
        'fetchPosts',
        fetchPosts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FetchPostsByPage_Request.fromBuffer(value),
        ($0.FetchPostsByPage_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateComment_Request,
            $0.CreateComment_Response>(
        'createComment',
        createComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateComment_Request.fromBuffer(value),
        ($0.CreateComment_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchCommentsByPost_Request,
            $0.FetchCommentsByPost_Response>(
        'fetchComments',
        fetchComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.FetchCommentsByPost_Request.fromBuffer(value),
        ($0.FetchCommentsByPost_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LikePost_Request, $0.LikePost_Response>(
        'likePost',
        likePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LikePost_Request.fromBuffer(value),
        ($0.LikePost_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UnlikePost_Request, $0.UnlikePost_Response>(
            'unlikePost',
            unlikePost_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UnlikePost_Request.fromBuffer(value),
            ($0.UnlikePost_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditPost_Request, $0.EditPost_Response>(
        'editPost',
        editPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditPost_Request.fromBuffer(value),
        ($0.EditPost_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthenticateUser_Response> authenticateUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticateUser_Request> request) async {
    return authenticateUser(call, await request);
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

  $async.Future<$0.FetchPostsByPage_Response> fetchPosts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FetchPostsByPage_Request> request) async {
    return fetchPosts(call, await request);
  }

  $async.Future<$0.CreateComment_Response> createComment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateComment_Request> request) async {
    return createComment(call, await request);
  }

  $async.Future<$0.FetchCommentsByPost_Response> fetchComments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FetchCommentsByPost_Request> request) async {
    return fetchComments(call, await request);
  }

  $async.Future<$0.LikePost_Response> likePost_Pre($grpc.ServiceCall call,
      $async.Future<$0.LikePost_Request> request) async {
    return likePost(call, await request);
  }

  $async.Future<$0.UnlikePost_Response> unlikePost_Pre($grpc.ServiceCall call,
      $async.Future<$0.UnlikePost_Request> request) async {
    return unlikePost(call, await request);
  }

  $async.Future<$0.EditPost_Response> editPost_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditPost_Request> request) async {
    return editPost(call, await request);
  }

  $async.Future<$0.AuthenticateUser_Response> authenticateUser(
      $grpc.ServiceCall call, $0.AuthenticateUser_Request request);
  $async.Future<$0.UploadPost_Response> uploadPost(
      $grpc.ServiceCall call, $0.UploadPost_Request request);
  $async.Future<$0.FetchPostDetails_Response> fetchPostDetails(
      $grpc.ServiceCall call, $0.FetchPostDetails_Request request);
  $async.Future<$0.FetchPostsByPage_Response> fetchPosts(
      $grpc.ServiceCall call, $0.FetchPostsByPage_Request request);
  $async.Future<$0.CreateComment_Response> createComment(
      $grpc.ServiceCall call, $0.CreateComment_Request request);
  $async.Future<$0.FetchCommentsByPost_Response> fetchComments(
      $grpc.ServiceCall call, $0.FetchCommentsByPost_Request request);
  $async.Future<$0.LikePost_Response> likePost(
      $grpc.ServiceCall call, $0.LikePost_Request request);
  $async.Future<$0.UnlikePost_Response> unlikePost(
      $grpc.ServiceCall call, $0.UnlikePost_Request request);
  $async.Future<$0.EditPost_Response> editPost(
      $grpc.ServiceCall call, $0.EditPost_Request request);
}
