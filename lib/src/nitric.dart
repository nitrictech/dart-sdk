import 'package:dart_sdk/src/resources/resource.dart';

import 'resources/bucket.dart';
import 'resources/api.dart';

BucketResource bucket(String name) {
  var res = BucketResource(name);

  res.register();

  return res;
}

ApiResource api(String name) {
  var res = ApiResource(name);

  res.register();

  return res;
}
