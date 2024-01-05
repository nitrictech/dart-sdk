import './src/resources/bucket.dart';

Future<BucketResource> bucket(String name) async {
  var res = BucketResource(name);

  await res.register();

  return res;
}

Future<ApiResource> api(String name) async {
  var res = ApiResource(name);

  await res.register();

  return res;
}
