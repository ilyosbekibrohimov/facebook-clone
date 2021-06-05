///
//  Generated code. Do not modify.
//  source: calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'calculator.pb.dart' as $0;
export 'calculator.pb.dart';

class CalculatorClient extends $grpc.Client {
  static final _$squareRoot = $grpc.ClientMethod<$0.Number, $0.Number>(
      '/Calculator/SquareRoot',
      ($0.Number value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Number.fromBuffer(value));
  static final _$calculator =
      $grpc.ClientMethod<$0.MyCalc_Request, $0.MyCalc_Response>(
          '/Calculator/Calculator',
          ($0.MyCalc_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MyCalc_Response.fromBuffer(value));

  CalculatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Number> squareRoot($0.Number request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$squareRoot, request, options: options);
  }

  $grpc.ResponseFuture<$0.MyCalc_Response> calculator($0.MyCalc_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$calculator, request, options: options);
  }
}

abstract class CalculatorServiceBase extends $grpc.Service {
  $core.String get $name => 'Calculator';

  CalculatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Number, $0.Number>(
        'SquareRoot',
        squareRoot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Number.fromBuffer(value),
        ($0.Number value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MyCalc_Request, $0.MyCalc_Response>(
        'Calculator',
        calculator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MyCalc_Request.fromBuffer(value),
        ($0.MyCalc_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Number> squareRoot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Number> request) async {
    return squareRoot(call, await request);
  }

  $async.Future<$0.MyCalc_Response> calculator_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MyCalc_Request> request) async {
    return calculator(call, await request);
  }

  $async.Future<$0.Number> squareRoot(
      $grpc.ServiceCall call, $0.Number request);
  $async.Future<$0.MyCalc_Response> calculator(
      $grpc.ServiceCall call, $0.MyCalc_Request request);
}
