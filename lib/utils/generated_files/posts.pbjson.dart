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
final $typed_data.Uint8List uploadPostDescriptor = $convert.base64Decode('CgpVcGxvYWRQb3N0GmwKB1JlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEhgKB2NvbnRlbnQYAiABKAlSB2NvbnRlbnQSIQoMcGljdHVyZV9ibG9iGAMgASgMUgtwaWN0dXJlQmxvYhIOCgJpZBgEIAEoCVICaWQaJAoIUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
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
  ],
};

/// Descriptor for `FetchPostDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchPostDetailsDescriptor = $convert.base64Decode('ChBGZXRjaFBvc3REZXRhaWxzGiIKB1JlcXVlc3QSFwoHcG9zdF9pZBgBIAEoBVIGcG9zdElkGnYKCFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhgKB2NvbnRlbnQYAyABKAlSB2NvbnRlbnQSIAoLcGljdHVyZUJsb2IYBCABKAxSC3BpY3R1cmVCbG9i');
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
    const {'1': 'success', '3': 5, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `FetchPostsByPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchPostsByPageDescriptor = $convert.base64Decode('ChBGZXRjaFBvc3RzQnlQYWdlGikKB1JlcXVlc3QSHgoKcGFnZU51bWJlchgBIAEoBVIKcGFnZU51bWJlchqGAQoIUmVzcG9uc2USDgoCaWQYASADKAVSAmlkEhQKBXRpdGxlGAIgAygJUgV0aXRsZRIYCgdjb250ZW50GAMgAygJUgdjb250ZW50EiAKC3BpY3R1cmVCbG9iGAQgAygMUgtwaWN0dXJlQmxvYhIYCgdzdWNjZXNzGAUgASgIUgdzdWNjZXNz');
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
