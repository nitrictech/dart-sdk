//
//  Generated code. Do not modify.
//  source: contracts/proto/document/v1/document.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import "package:protobuf_wellknown/protobuf_wellknown.dart" as $9;

/// Provides a Collection type for storing documents
class Collection extends $pb.GeneratedMessage {
  factory Collection({
    $core.String? name,
    Key? parent,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  Collection._() : super();
  factory Collection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Collection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Collection',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Key>(2, _omitFieldNames ? '' : 'parent', subBuilder: Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Collection clone() => Collection()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Collection copyWith(void Function(Collection) updates) =>
      super.copyWith((message) => updates(message as Collection)) as Collection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Collection create() => Collection._();
  Collection createEmptyInstance() => create();
  static $pb.PbList<Collection> createRepeated() => $pb.PbList<Collection>();
  @$core.pragma('dart2js:noInline')
  static Collection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Collection>(create);
  static Collection? _defaultInstance;

  /// The collection name
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// Optional parent key, required when the collection is a sub-collection of another document
  @$pb.TagNumber(2)
  Key get parent => $_getN(1);
  @$pb.TagNumber(2)
  set parent(Key v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasParent() => $_has(1);
  @$pb.TagNumber(2)
  void clearParent() => clearField(2);
  @$pb.TagNumber(2)
  Key ensureParent() => $_ensure(1);
}

/// Provides a document identifying key type
class Key extends $pb.GeneratedMessage {
  factory Key({
    Collection? collection,
    $core.String? id,
  }) {
    final $result = create();
    if (collection != null) {
      $result.collection = collection;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  Key._() : super();
  factory Key.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Key.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Key',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Collection>(1, _omitFieldNames ? '' : 'collection',
        subBuilder: Collection.create)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Key clone() => Key()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Key copyWith(void Function(Key) updates) =>
      super.copyWith((message) => updates(message as Key)) as Key;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Key create() => Key._();
  Key createEmptyInstance() => create();
  static $pb.PbList<Key> createRepeated() => $pb.PbList<Key>();
  @$core.pragma('dart2js:noInline')
  static Key getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Key>(create);
  static Key? _defaultInstance;

  /// The item collection
  @$pb.TagNumber(1)
  Collection get collection => $_getN(0);
  @$pb.TagNumber(1)
  set collection(Collection v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollection() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollection() => clearField(1);
  @$pb.TagNumber(1)
  Collection ensureCollection() => $_ensure(0);

  /// The items unique id
  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

/// Provides a return document type
class Document extends $pb.GeneratedMessage {
  factory Document({
    $9.Struct? content,
    Key? key,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  Document._() : super();
  factory Document.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Document',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<$9.Struct>(1, _omitFieldNames ? '' : 'content',
        subBuilder: $9.Struct.create)
    ..aOM<Key>(2, _omitFieldNames ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) =>
      super.copyWith((message) => updates(message as Document)) as Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  /// The document content (JSON object)
  @$pb.TagNumber(1)
  $9.Struct get content => $_getN(0);
  @$pb.TagNumber(1)
  set content($9.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
  @$pb.TagNumber(1)
  $9.Struct ensureContent() => $_ensure(0);

  /// The document's unique key, including collection/sub-collections
  @$pb.TagNumber(2)
  Key get key => $_getN(1);
  @$pb.TagNumber(2)
  set key(Key v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
  @$pb.TagNumber(2)
  Key ensureKey() => $_ensure(1);
}

enum ExpressionValue_Kind {
  intValue,
  doubleValue,
  stringValue,
  boolValue,
  notSet
}

class ExpressionValue extends $pb.GeneratedMessage {
  factory ExpressionValue({
    $fixnum.Int64? intValue,
    $core.double? doubleValue,
    $core.String? stringValue,
    $core.bool? boolValue,
  }) {
    final $result = create();
    if (intValue != null) {
      $result.intValue = intValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    return $result;
  }
  ExpressionValue._() : super();
  factory ExpressionValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExpressionValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ExpressionValue_Kind>
      _ExpressionValue_KindByTag = {
    1: ExpressionValue_Kind.intValue,
    2: ExpressionValue_Kind.doubleValue,
    3: ExpressionValue_Kind.stringValue,
    4: ExpressionValue_Kind.boolValue,
    0: ExpressionValue_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExpressionValue',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'intValue')
    ..a<$core.double>(
        2, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'stringValue')
    ..aOB(4, _omitFieldNames ? '' : 'boolValue')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExpressionValue clone() => ExpressionValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExpressionValue copyWith(void Function(ExpressionValue) updates) =>
      super.copyWith((message) => updates(message as ExpressionValue))
          as ExpressionValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpressionValue create() => ExpressionValue._();
  ExpressionValue createEmptyInstance() => create();
  static $pb.PbList<ExpressionValue> createRepeated() =>
      $pb.PbList<ExpressionValue>();
  @$core.pragma('dart2js:noInline')
  static ExpressionValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExpressionValue>(create);
  static ExpressionValue? _defaultInstance;

  ExpressionValue_Kind whichKind() =>
      _ExpressionValue_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  /// Represents an integer value.
  @$pb.TagNumber(1)
  $fixnum.Int64 get intValue => $_getI64(0);
  @$pb.TagNumber(1)
  set intValue($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIntValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntValue() => clearField(1);

  /// Represents a double value.
  @$pb.TagNumber(2)
  $core.double get doubleValue => $_getN(1);
  @$pb.TagNumber(2)
  set doubleValue($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDoubleValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleValue() => clearField(2);

  /// Represents a string value.
  @$pb.TagNumber(3)
  $core.String get stringValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set stringValue($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStringValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearStringValue() => clearField(3);

  /// Represents a boolean value.
  @$pb.TagNumber(4)
  $core.bool get boolValue => $_getBF(3);
  @$pb.TagNumber(4)
  set boolValue($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBoolValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolValue() => clearField(4);
}

/// Provides a query expression type
class Expression extends $pb.GeneratedMessage {
  factory Expression({
    $core.String? operand,
    $core.String? operator,
    ExpressionValue? value,
  }) {
    final $result = create();
    if (operand != null) {
      $result.operand = operand;
    }
    if (operator != null) {
      $result.operator = operator;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Expression._() : super();
  factory Expression.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Expression.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Expression',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'operand')
    ..aOS(2, _omitFieldNames ? '' : 'operator')
    ..aOM<ExpressionValue>(3, _omitFieldNames ? '' : 'value',
        subBuilder: ExpressionValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Expression clone() => Expression()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Expression copyWith(void Function(Expression) updates) =>
      super.copyWith((message) => updates(message as Expression)) as Expression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expression create() => Expression._();
  Expression createEmptyInstance() => create();
  static $pb.PbList<Expression> createRepeated() => $pb.PbList<Expression>();
  @$core.pragma('dart2js:noInline')
  static Expression getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Expression>(create);
  static Expression? _defaultInstance;

  /// The query operand or attribute
  @$pb.TagNumber(1)
  $core.String get operand => $_getSZ(0);
  @$pb.TagNumber(1)
  set operand($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOperand() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperand() => clearField(1);

  /// The query operator [ == | < | <= | > | >= | startsWith ]
  @$pb.TagNumber(2)
  $core.String get operator => $_getSZ(1);
  @$pb.TagNumber(2)
  set operator($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOperator() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperator() => clearField(2);

  /// The query expression value
  @$pb.TagNumber(3)
  ExpressionValue get value => $_getN(2);
  @$pb.TagNumber(3)
  set value(ExpressionValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  ExpressionValue ensureValue() => $_ensure(2);
}

class DocumentGetRequest extends $pb.GeneratedMessage {
  factory DocumentGetRequest({
    Key? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  DocumentGetRequest._() : super();
  factory DocumentGetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentGetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentGetRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Key>(1, _omitFieldNames ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentGetRequest clone() => DocumentGetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentGetRequest copyWith(void Function(DocumentGetRequest) updates) =>
      super.copyWith((message) => updates(message as DocumentGetRequest))
          as DocumentGetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentGetRequest create() => DocumentGetRequest._();
  DocumentGetRequest createEmptyInstance() => create();
  static $pb.PbList<DocumentGetRequest> createRepeated() =>
      $pb.PbList<DocumentGetRequest>();
  @$core.pragma('dart2js:noInline')
  static DocumentGetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentGetRequest>(create);
  static DocumentGetRequest? _defaultInstance;

  /// Key of the document to retrieve
  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);
}

class DocumentGetResponse extends $pb.GeneratedMessage {
  factory DocumentGetResponse({
    Document? document,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    return $result;
  }
  DocumentGetResponse._() : super();
  factory DocumentGetResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentGetResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentGetResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Document>(1, _omitFieldNames ? '' : 'document',
        subBuilder: Document.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentGetResponse clone() => DocumentGetResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentGetResponse copyWith(void Function(DocumentGetResponse) updates) =>
      super.copyWith((message) => updates(message as DocumentGetResponse))
          as DocumentGetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentGetResponse create() => DocumentGetResponse._();
  DocumentGetResponse createEmptyInstance() => create();
  static $pb.PbList<DocumentGetResponse> createRepeated() =>
      $pb.PbList<DocumentGetResponse>();
  @$core.pragma('dart2js:noInline')
  static DocumentGetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentGetResponse>(create);
  static DocumentGetResponse? _defaultInstance;

  /// The retrieved value
  @$pb.TagNumber(1)
  Document get document => $_getN(0);
  @$pb.TagNumber(1)
  set document(Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  Document ensureDocument() => $_ensure(0);
}

class DocumentSetRequest extends $pb.GeneratedMessage {
  factory DocumentSetRequest({
    Key? key,
    $9.Struct? content,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  DocumentSetRequest._() : super();
  factory DocumentSetRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentSetRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentSetRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Key>(1, _omitFieldNames ? '' : 'key', subBuilder: Key.create)
    ..aOM<$9.Struct>(3, _omitFieldNames ? '' : 'content',
        subBuilder: $9.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentSetRequest clone() => DocumentSetRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentSetRequest copyWith(void Function(DocumentSetRequest) updates) =>
      super.copyWith((message) => updates(message as DocumentSetRequest))
          as DocumentSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentSetRequest create() => DocumentSetRequest._();
  DocumentSetRequest createEmptyInstance() => create();
  static $pb.PbList<DocumentSetRequest> createRepeated() =>
      $pb.PbList<DocumentSetRequest>();
  @$core.pragma('dart2js:noInline')
  static DocumentSetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentSetRequest>(create);
  static DocumentSetRequest? _defaultInstance;

  /// Key of the document to set
  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);

  /// The document content to store (JSON object)
  @$pb.TagNumber(3)
  $9.Struct get content => $_getN(1);
  @$pb.TagNumber(3)
  set content($9.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
  @$pb.TagNumber(3)
  $9.Struct ensureContent() => $_ensure(1);
}

class DocumentSetResponse extends $pb.GeneratedMessage {
  factory DocumentSetResponse() => create();
  DocumentSetResponse._() : super();
  factory DocumentSetResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentSetResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentSetResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentSetResponse clone() => DocumentSetResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentSetResponse copyWith(void Function(DocumentSetResponse) updates) =>
      super.copyWith((message) => updates(message as DocumentSetResponse))
          as DocumentSetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentSetResponse create() => DocumentSetResponse._();
  DocumentSetResponse createEmptyInstance() => create();
  static $pb.PbList<DocumentSetResponse> createRepeated() =>
      $pb.PbList<DocumentSetResponse>();
  @$core.pragma('dart2js:noInline')
  static DocumentSetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentSetResponse>(create);
  static DocumentSetResponse? _defaultInstance;
}

class DocumentDeleteRequest extends $pb.GeneratedMessage {
  factory DocumentDeleteRequest({
    Key? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  DocumentDeleteRequest._() : super();
  factory DocumentDeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentDeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentDeleteRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Key>(1, _omitFieldNames ? '' : 'key', subBuilder: Key.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentDeleteRequest clone() =>
      DocumentDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentDeleteRequest copyWith(
          void Function(DocumentDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as DocumentDeleteRequest))
          as DocumentDeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentDeleteRequest create() => DocumentDeleteRequest._();
  DocumentDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<DocumentDeleteRequest> createRepeated() =>
      $pb.PbList<DocumentDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static DocumentDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentDeleteRequest>(create);
  static DocumentDeleteRequest? _defaultInstance;

  /// Key of the document to delete
  @$pb.TagNumber(1)
  Key get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(Key v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
  @$pb.TagNumber(1)
  Key ensureKey() => $_ensure(0);
}

class DocumentDeleteResponse extends $pb.GeneratedMessage {
  factory DocumentDeleteResponse() => create();
  DocumentDeleteResponse._() : super();
  factory DocumentDeleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentDeleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentDeleteResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentDeleteResponse clone() =>
      DocumentDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentDeleteResponse copyWith(
          void Function(DocumentDeleteResponse) updates) =>
      super.copyWith((message) => updates(message as DocumentDeleteResponse))
          as DocumentDeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentDeleteResponse create() => DocumentDeleteResponse._();
  DocumentDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<DocumentDeleteResponse> createRepeated() =>
      $pb.PbList<DocumentDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static DocumentDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentDeleteResponse>(create);
  static DocumentDeleteResponse? _defaultInstance;
}

class DocumentQueryRequest extends $pb.GeneratedMessage {
  factory DocumentQueryRequest({
    Collection? collection,
    $core.Iterable<Expression>? expressions,
    $core.int? limit,
    $core.Map<$core.String, $core.String>? pagingToken,
  }) {
    final $result = create();
    if (collection != null) {
      $result.collection = collection;
    }
    if (expressions != null) {
      $result.expressions.addAll(expressions);
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (pagingToken != null) {
      $result.pagingToken.addAll(pagingToken);
    }
    return $result;
  }
  DocumentQueryRequest._() : super();
  factory DocumentQueryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentQueryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentQueryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Collection>(1, _omitFieldNames ? '' : 'collection',
        subBuilder: Collection.create)
    ..pc<Expression>(
        3, _omitFieldNames ? '' : 'expressions', $pb.PbFieldType.PM,
        subBuilder: Expression.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'pagingToken',
        entryClassName: 'DocumentQueryRequest.PagingTokenEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('nitric.document.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentQueryRequest clone() =>
      DocumentQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentQueryRequest copyWith(void Function(DocumentQueryRequest) updates) =>
      super.copyWith((message) => updates(message as DocumentQueryRequest))
          as DocumentQueryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentQueryRequest create() => DocumentQueryRequest._();
  DocumentQueryRequest createEmptyInstance() => create();
  static $pb.PbList<DocumentQueryRequest> createRepeated() =>
      $pb.PbList<DocumentQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static DocumentQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentQueryRequest>(create);
  static DocumentQueryRequest? _defaultInstance;

  /// The collection to query
  @$pb.TagNumber(1)
  Collection get collection => $_getN(0);
  @$pb.TagNumber(1)
  set collection(Collection v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollection() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollection() => clearField(1);
  @$pb.TagNumber(1)
  Collection ensureCollection() => $_ensure(0);

  /// Optional query expressions
  @$pb.TagNumber(3)
  $core.List<Expression> get expressions => $_getList(1);

  /// Optional query fetch limit
  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(4)
  set limit($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);

  /// Optional query paging continuation token
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get pagingToken => $_getMap(3);
}

class DocumentQueryResponse extends $pb.GeneratedMessage {
  factory DocumentQueryResponse({
    $core.Iterable<Document>? documents,
    $core.Map<$core.String, $core.String>? pagingToken,
  }) {
    final $result = create();
    if (documents != null) {
      $result.documents.addAll(documents);
    }
    if (pagingToken != null) {
      $result.pagingToken.addAll(pagingToken);
    }
    return $result;
  }
  DocumentQueryResponse._() : super();
  factory DocumentQueryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentQueryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentQueryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..pc<Document>(1, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.PM,
        subBuilder: Document.create)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'pagingToken',
        entryClassName: 'DocumentQueryResponse.PagingTokenEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('nitric.document.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentQueryResponse clone() =>
      DocumentQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentQueryResponse copyWith(
          void Function(DocumentQueryResponse) updates) =>
      super.copyWith((message) => updates(message as DocumentQueryResponse))
          as DocumentQueryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentQueryResponse create() => DocumentQueryResponse._();
  DocumentQueryResponse createEmptyInstance() => create();
  static $pb.PbList<DocumentQueryResponse> createRepeated() =>
      $pb.PbList<DocumentQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static DocumentQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentQueryResponse>(create);
  static DocumentQueryResponse? _defaultInstance;

  /// The retrieved values
  @$pb.TagNumber(1)
  $core.List<Document> get documents => $_getList(0);

  /// The query paging continuation token, when empty no further results are available
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get pagingToken => $_getMap(1);
}

class DocumentQueryStreamRequest extends $pb.GeneratedMessage {
  factory DocumentQueryStreamRequest({
    Collection? collection,
    $core.Iterable<Expression>? expressions,
    $core.int? limit,
  }) {
    final $result = create();
    if (collection != null) {
      $result.collection = collection;
    }
    if (expressions != null) {
      $result.expressions.addAll(expressions);
    }
    if (limit != null) {
      $result.limit = limit;
    }
    return $result;
  }
  DocumentQueryStreamRequest._() : super();
  factory DocumentQueryStreamRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentQueryStreamRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentQueryStreamRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Collection>(1, _omitFieldNames ? '' : 'collection',
        subBuilder: Collection.create)
    ..pc<Expression>(
        3, _omitFieldNames ? '' : 'expressions', $pb.PbFieldType.PM,
        subBuilder: Expression.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentQueryStreamRequest clone() =>
      DocumentQueryStreamRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentQueryStreamRequest copyWith(
          void Function(DocumentQueryStreamRequest) updates) =>
      super.copyWith(
              (message) => updates(message as DocumentQueryStreamRequest))
          as DocumentQueryStreamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentQueryStreamRequest create() => DocumentQueryStreamRequest._();
  DocumentQueryStreamRequest createEmptyInstance() => create();
  static $pb.PbList<DocumentQueryStreamRequest> createRepeated() =>
      $pb.PbList<DocumentQueryStreamRequest>();
  @$core.pragma('dart2js:noInline')
  static DocumentQueryStreamRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentQueryStreamRequest>(create);
  static DocumentQueryStreamRequest? _defaultInstance;

  /// The collection to query
  @$pb.TagNumber(1)
  Collection get collection => $_getN(0);
  @$pb.TagNumber(1)
  set collection(Collection v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollection() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollection() => clearField(1);
  @$pb.TagNumber(1)
  Collection ensureCollection() => $_ensure(0);

  /// Optional query expressions
  @$pb.TagNumber(3)
  $core.List<Expression> get expressions => $_getList(1);

  /// Optional query fetch limit
  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(4)
  set limit($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);
}

class DocumentQueryStreamResponse extends $pb.GeneratedMessage {
  factory DocumentQueryStreamResponse({
    Document? document,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    return $result;
  }
  DocumentQueryStreamResponse._() : super();
  factory DocumentQueryStreamResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentQueryStreamResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentQueryStreamResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.document.v1'),
      createEmptyInstance: create)
    ..aOM<Document>(1, _omitFieldNames ? '' : 'document',
        subBuilder: Document.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentQueryStreamResponse clone() =>
      DocumentQueryStreamResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentQueryStreamResponse copyWith(
          void Function(DocumentQueryStreamResponse) updates) =>
      super.copyWith(
              (message) => updates(message as DocumentQueryStreamResponse))
          as DocumentQueryStreamResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentQueryStreamResponse create() =>
      DocumentQueryStreamResponse._();
  DocumentQueryStreamResponse createEmptyInstance() => create();
  static $pb.PbList<DocumentQueryStreamResponse> createRepeated() =>
      $pb.PbList<DocumentQueryStreamResponse>();
  @$core.pragma('dart2js:noInline')
  static DocumentQueryStreamResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentQueryStreamResponse>(create);
  static DocumentQueryStreamResponse? _defaultInstance;

  /// The stream document
  @$pb.TagNumber(1)
  Document get document => $_getN(0);
  @$pb.TagNumber(1)
  set document(Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  Document ensureDocument() => $_ensure(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
