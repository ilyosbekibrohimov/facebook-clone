///
//  Generated code. Do not modify.
//  source: posts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
final $typed_data.Uint8List uploadPostDescriptor = $convert.base64Decode('CgpVcGxvYWRQb3N0GlwKB1JlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEhgKB2NvbnRlbnQYAiABKAlSB2NvbnRlbnQSIQoMcGljdHVyZV9ibG9iGAMgASgMUgtwaWN0dXJlQmxvYhokCghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');
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
@$core.Deprecated('Use fetchKPostIdsDescriptor instead')
const FetchKPostIds$json = const {
  '1': 'FetchKPostIds',
  '3': const [FetchKPostIds_Request$json, FetchKPostIds_Response$json],
};

@$core.Deprecated('Use fetchKPostIdsDescriptor instead')
const FetchKPostIds_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'k', '3': 1, '4': 1, '5': 5, '10': 'k'},
  ],
};

@$core.Deprecated('Use fetchKPostIdsDescriptor instead')
const FetchKPostIds_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 3, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `FetchKPostIds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchKPostIdsDescriptor = $convert.base64Decode('Cg1GZXRjaEtQb3N0SWRzGhcKB1JlcXVlc3QSDAoBaxgBIAEoBVIBaxoaCghSZXNwb25zZRIOCgJpZBgBIAMoBVICaWQ=');
