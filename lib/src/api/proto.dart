import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart';

class Proto {
  static Struct structFromMap(Map<String, dynamic> protoMap) {
    final struct = Struct();
    protoMap.forEach(
        (key, value) => struct.fields[key] = Proto.valueFromDynamic(value));

    return struct;
  }

  static Value valueFromDynamic(dynamic value) {
    if (value is String) {
      return Value(stringValue: value);
    } else if (value is int) {
      return Value(numberValue: value.toDouble());
    } else if (value is double) {
      return Value(numberValue: value);
    } else if (value is bool) {
      return Value(boolValue: value);
    } else if (value is List) {
      return Value(
          listValue:
              ListValue(values: value.map((e) => Proto.valueFromDynamic(e))));
    } else if (value is Map) {
      var content = Struct();
      value.forEach(
          (key, value) => content.fields[key] = Proto.valueFromDynamic(value));
      return Value(structValue: content);
    } else if (value == null) {
      return Value(nullValue: null);
    }

    throw FormatException(
        "The type of dynamic value is incompatible with the Value types.");
  }

  static Map<String, dynamic> mapFromStruct(Struct struct) {
    return struct.fields
        .map((key, value) => MapEntry(key, Proto.dynamicFromValue(value)));
  }

  static dynamic dynamicFromValue(Value protoValue) {
    return switch (protoValue.whichKind()) {
      Value_Kind.boolValue => protoValue.boolValue,
      Value_Kind.listValue => protoValue.listValue.values
          .map((v) => Proto.dynamicFromValue(v))
          .toList(),
      Value_Kind.numberValue => protoValue.numberValue,
      Value_Kind.stringValue => protoValue.stringValue,
      Value_Kind.structValue => Proto.mapFromStruct(protoValue.structValue),
      _ => null
    };
  }
}
