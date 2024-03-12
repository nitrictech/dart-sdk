import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart';

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  final Future<T> future;

  MockResponseFuture.value(T value) : future = Future.value(value);

  MockResponseFuture.error(Object error) : future = Future.error(error);

  MockResponseFuture.future(this.future);

  @override
  Future<S> then<S>(FutureOr<S> Function(T) onValue, {Function? onError}) =>
      Future.value(future).then(onValue, onError: onError);
}

/// A gRPC response producing a stream of values.
class MockResponseStream<T> extends Mock
    with Stream<T>
    implements ResponseStream<T> {
  List<T> contents;

  MockResponseStream.fromIterable(this.contents);

  @override
  MockResponseFuture<T> get single {
    var content = contents.last;

    contents.removeLast();

    return MockResponseFuture.value(content);
  }
}

class MockResourceClient extends Mock implements ResourcesClient {}
