import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart';
import 'package:test/test.dart';

void main() {
  test("Test struct from map", () async {
    var map = {
      "stringValue": "test",
      "intValue": 1,
      "doubleValue": 1.0,
      "boolValue": true,
      "listValue": ["stringValue", 1, 1.0, true],
      "structValue": {"message": "test"},
      "nullValue": null,
    };

    var struct = Proto.structFromMap(map);

    expect(struct.fields["stringValue"], Value(stringValue: "test"));
    expect(struct.fields["intValue"], Value(numberValue: 1));
    expect(struct.fields["doubleValue"], Value(numberValue: 1.0));
    expect(struct.fields["boolValue"], Value(boolValue: true));
    expect(
        struct.fields["listValue"],
        Value(
            listValue: ListValue(values: [
          Value(stringValue: "stringValue"),
          Value(numberValue: 1),
          Value(numberValue: 1.0),
          Value(boolValue: true)
        ])));
    expect(
        struct.fields["structValue"],
        Value(
            structValue:
                Struct(fields: {"message": Value(stringValue: "test")})));
    expect(struct.fields["nullValue"], Value(nullValue: null));
  });

  test("Test value from dynamic", () async {
    var stringValue = Proto.valueFromDynamic("stringValue");
    expect(stringValue, Value(stringValue: "stringValue"));

    var intValue = Proto.valueFromDynamic(1);
    expect(intValue, Value(numberValue: 1));

    var doubleValue = Proto.valueFromDynamic(1.0);
    expect(doubleValue, Value(numberValue: 1.0));

    var boolValue = Proto.valueFromDynamic(true);
    expect(boolValue, Value(boolValue: true));

    var nullValue = Proto.valueFromDynamic(null);
    expect(nullValue, Value(nullValue: null));

    var listValue = Proto.valueFromDynamic(["stringValue", 1, 1.0, true]);
    expect(
        listValue,
        Value(
            listValue: ListValue(values: [
          Value(stringValue: "stringValue"),
          Value(numberValue: 1),
          Value(numberValue: 1.0),
          Value(boolValue: true)
        ])));

    var structValue = Proto.valueFromDynamic({'message': 'test'});
    expect(
        structValue,
        Value(
            structValue:
                Struct(fields: {'message': Value(stringValue: "test")})));
  });

  test("Test dynamic from value", () async {
    var stringValue = Proto.dynamicFromValue(Value(stringValue: "stringValue"));
    expect(stringValue, "stringValue");

    var intValue = Proto.dynamicFromValue(Value(numberValue: 1));
    expect(intValue, 1);

    var doubleValue = Proto.dynamicFromValue(Value(numberValue: 1.0));
    expect(doubleValue, 1.0);

    var boolValue = Proto.dynamicFromValue(Value(boolValue: true));
    expect(boolValue, true);

    var nullValue = Proto.dynamicFromValue(Value(nullValue: null));
    expect(nullValue, null);

    var listValue = Proto.dynamicFromValue(Value(
        listValue: ListValue(values: [
      Value(stringValue: "stringValue"),
      Value(numberValue: 1),
      Value(numberValue: 1.0),
      Value(boolValue: true)
    ])));
    expect(listValue, ["stringValue", 1, 1.0, true]);

    var structValue = Proto.dynamicFromValue(Value(
        structValue: Struct(fields: {"message": Value(stringValue: "test")})));
    expect(structValue, {'message': 'test'});
  });

  test("test map from struct", () async {
    var struct = Struct();
    struct.fields["stringValue"] = Value(stringValue: "test");
    struct.fields["intValue"] = Value(numberValue: 1);
    struct.fields["doubleValue"] = Value(numberValue: 1.0);
    struct.fields["boolValue"] = Value(boolValue: true);
    struct.fields["listValue"] = Value(
        listValue: ListValue(values: [
      Value(stringValue: "stringValue"),
      Value(numberValue: 1),
      Value(numberValue: 1.0),
      Value(boolValue: true)
    ]));
    struct.fields["structValue"] = Value(
        structValue: Struct(fields: {'message': Value(stringValue: 'test')}));
    struct.fields["nullValue"] = Value(nullValue: null);

    var map = Proto.mapFromStruct(struct);

    expect({
      "stringValue": "test",
      "intValue": 1,
      "doubleValue": 1.0,
      "boolValue": true,
      "listValue": ["stringValue", 1, 1.0, true],
      "structValue": {"message": "test"},
      "nullValue": null,
    }, map);
  });
}
