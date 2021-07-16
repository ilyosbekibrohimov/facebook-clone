///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authenticateUserDescriptor instead')
const AuthenticateUser$json = const {
  '1': 'AuthenticateUser',
  '3': const [AuthenticateUser_Request$json, AuthenticateUser_Response$json],
};

@$core.Deprecated('Use authenticateUserDescriptor instead')
const AuthenticateUser_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'id_token', '3': 1, '4': 1, '5': 9, '10': 'idToken'},
  ],
};

@$core.Deprecated('Use authenticateUserDescriptor instead')
const AuthenticateUser_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `AuthenticateUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateUserDescriptor = $convert.base64Decode('ChBBdXRoZW50aWNhdGVVc2VyGiQKB1JlcXVlc3QSGQoIaWRfdG9rZW4YASABKAlSB2lkVG9rZW4aPAoIUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIWCgZ1c2VySWQYAiABKAVSBnVzZXJJZA==');
@$core.Deprecated('Use uploadPostDescriptor instead')
const UploadPost$json = const {
  '1': 'UploadPost',
  '3': const [UploadPost_Request$json, UploadPost_Response$json],
};

@$core.Deprecated('Use uploadPostDescriptor instead')
const UploadPost_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'picture_blob', '3': 3, '4': 1, '5': 12, '10': 'pictureBlob'},
    const {'1': 'id', '3': 4, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 5, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

@$core.Deprecated('Use uploadPostDescriptor instead')
const UploadPost_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UploadPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadPostDescriptor = $convert.base64Decode('CgpVcGxvYWRQb3N0GqMBCgdSZXF1ZXN0EhQKBXRpdGxlGAEgASgJUgV0aXRsZRIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EiEKDHBpY3R1cmVfYmxvYhgDIAEoDFILcGljdHVyZUJsb2ISDgoCaWQYBCABKAlSAmlkEhcKB3VzZXJfaWQYBSABKAlSBnVzZXJJZBIcCgl0aW1lc3RhbXAYBiABKAlSCXRpbWVzdGFtcBokCghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use fetchPostDetailsDescriptor instead')
const FetchPostDetails$json = const {
  '1': 'FetchPostDetails',
  '3': const [FetchPostDetails_Request$json, FetchPostDetails_Response$json],
};

@$core.Deprecated('Use fetchPostDetailsDescriptor instead')
const FetchPostDetails_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

@$core.Deprecated('Use fetchPostDetailsDescriptor instead')
const FetchPostDetails_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'pictureBlob', '3': 4, '4': 1, '5': 12, '10': 'pictureBlob'},
    const {'1': 'creator_name', '3': 5, '4': 1, '5': 9, '10': 'creatorName'},
    const {'1': 'creator_photoUrl', '3': 6, '4': 1, '5': 9, '10': 'creatorPhotoUrl'},
    const {'1': 'numberOfLikes', '3': 7, '4': 1, '5': 5, '10': 'numberOfLikes'},
    const {'1': 'isLiked', '3': 8, '4': 1, '5': 8, '10': 'isLiked'},
  ],
};

/// Descriptor for `FetchPostDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchPostDetailsDescriptor = $convert.base64Decode('ChBGZXRjaFBvc3REZXRhaWxzGjsKB1JlcXVlc3QSFwoHcG9zdF9pZBgBIAEoBVIGcG9zdElkEhcKB3VzZXJfaWQYAiABKAVSBnVzZXJJZBqEAgoIUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSGAoHY29udGVudBgDIAEoCVIHY29udGVudBIgCgtwaWN0dXJlQmxvYhgEIAEoDFILcGljdHVyZUJsb2ISIQoMY3JlYXRvcl9uYW1lGAUgASgJUgtjcmVhdG9yTmFtZRIpChBjcmVhdG9yX3Bob3RvVXJsGAYgASgJUg9jcmVhdG9yUGhvdG9VcmwSJAoNbnVtYmVyT2ZMaWtlcxgHIAEoBVINbnVtYmVyT2ZMaWtlcxIYCgdpc0xpa2VkGAggASgIUgdpc0xpa2Vk');
@$core.Deprecated('Use fetchPostsByPageDescriptor instead')
const FetchPostsByPage$json = const {
  '1': 'FetchPostsByPage',
  '3': const [FetchPostsByPage_Request$json, FetchPostsByPage_Response$json],
};

@$core.Deprecated('Use fetchPostsByPageDescriptor instead')
const FetchPostsByPage_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'pageNumber', '3': 1, '4': 1, '5': 5, '10': 'pageNumber'},
  ],
};

@$core.Deprecated('Use fetchPostsByPageDescriptor instead')
const FetchPostsByPage_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 3, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 3, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 3, '4': 3, '5': 9, '10': 'content'},
    const {'1': 'pictureBlob', '3': 4, '4': 3, '5': 12, '10': 'pictureBlob'},
    const {'1': 'creator_names', '3': 5, '4': 3, '5': 9, '10': 'creatorNames'},
    const {'1': 'creators_photo_url', '3': 6, '4': 3, '5': 9, '10': 'creatorsPhotoUrl'},
    const {'1': 'success', '3': 7, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `FetchPostsByPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchPostsByPageDescriptor = $convert.base64Decode('ChBGZXRjaFBvc3RzQnlQYWdlGikKB1JlcXVlc3QSHgoKcGFnZU51bWJlchgBIAEoBVIKcGFnZU51bWJlchrZAQoIUmVzcG9uc2USDgoCaWQYASADKAVSAmlkEhQKBXRpdGxlGAIgAygJUgV0aXRsZRIYCgdjb250ZW50GAMgAygJUgdjb250ZW50EiAKC3BpY3R1cmVCbG9iGAQgAygMUgtwaWN0dXJlQmxvYhIjCg1jcmVhdG9yX25hbWVzGAUgAygJUgxjcmVhdG9yTmFtZXMSLAoSY3JlYXRvcnNfcGhvdG9fdXJsGAYgAygJUhBjcmVhdG9yc1Bob3RvVXJsEhgKB3N1Y2Nlc3MYByABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use fetchCommentsByPostDescriptor instead')
const FetchCommentsByPost$json = const {
  '1': 'FetchCommentsByPost',
  '3': const [FetchCommentsByPost_Request$json, FetchCommentsByPost_Response$json],
};

@$core.Deprecated('Use fetchCommentsByPostDescriptor instead')
const FetchCommentsByPost_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
  ],
};

@$core.Deprecated('Use fetchCommentsByPostDescriptor instead')
const FetchCommentsByPost_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 9, '10': 'content'},
    const {'1': 'userPhotoUrl', '3': 2, '4': 3, '5': 9, '10': 'userPhotoUrl'},
    const {'1': 'userName', '3': 3, '4': 3, '5': 9, '10': 'userName'},
    const {'1': 'success', '3': 4, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `FetchCommentsByPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCommentsByPostDescriptor = $convert.base64Decode('ChNGZXRjaENvbW1lbnRzQnlQb3N0GiIKB1JlcXVlc3QSFwoHcG9zdF9pZBgBIAEoBVIGcG9zdElkGn4KCFJlc3BvbnNlEhgKB2NvbnRlbnQYASADKAlSB2NvbnRlbnQSIgoMdXNlclBob3RvVXJsGAIgAygJUgx1c2VyUGhvdG9VcmwSGgoIdXNlck5hbWUYAyADKAlSCHVzZXJOYW1lEhgKB3N1Y2Nlc3MYBCABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use createCommentDescriptor instead')
const CreateComment$json = const {
  '1': 'CreateComment',
  '3': const [CreateComment_Request$json, CreateComment_Response$json],
};

@$core.Deprecated('Use createCommentDescriptor instead')
const CreateComment_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'post_id', '3': 2, '4': 1, '5': 5, '10': 'postId'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
  ],
};

@$core.Deprecated('Use createCommentDescriptor instead')
const CreateComment_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CreateComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCommentDescriptor = $convert.base64Decode('Cg1DcmVhdGVDb21tZW50GmUKB1JlcXVlc3QSDgoCaWQYASABKAVSAmlkEhcKB3Bvc3RfaWQYAiABKAVSBnBvc3RJZBIXCgd1c2VyX2lkGAMgASgFUgZ1c2VySWQSGAoHY29udGVudBgEIAEoCVIHY29udGVudBokCghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use likePostDescriptor instead')
const LikePost$json = const {
  '1': 'LikePost',
  '3': const [LikePost_Request$json, LikePost_Response$json],
};

@$core.Deprecated('Use likePostDescriptor instead')
const LikePost_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

@$core.Deprecated('Use likePostDescriptor instead')
const LikePost_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `LikePost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likePostDescriptor = $convert.base64Decode('CghMaWtlUG9zdBpZCgdSZXF1ZXN0EhcKB3Bvc3RfaWQYASABKAVSBnBvc3RJZBIXCgd1c2VyX2lkGAIgASgFUgZ1c2VySWQSHAoJdGltZXN0YW1wGAMgASgJUgl0aW1lc3RhbXAaJAoIUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use unlikePostDescriptor instead')
const UnlikePost$json = const {
  '1': 'UnlikePost',
  '3': const [UnlikePost_Request$json, UnlikePost_Response$json],
};

@$core.Deprecated('Use unlikePostDescriptor instead')
const UnlikePost_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 5, '10': 'postId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

@$core.Deprecated('Use unlikePostDescriptor instead')
const UnlikePost_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UnlikePost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlikePostDescriptor = $convert.base64Decode('CgpVbmxpa2VQb3N0GlkKB1JlcXVlc3QSFwoHcG9zdF9pZBgBIAEoBVIGcG9zdElkEhcKB3VzZXJfaWQYAiABKAVSBnVzZXJJZBIcCgl0aW1lc3RhbXAYAyABKAlSCXRpbWVzdGFtcBokCghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');
