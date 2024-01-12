import 'resources/common.dart';

BucketResource bucket(String name) {
  var res = BucketResource(name);

  res.register();

  return res;
}

Api api(String name) {
  var res = Api(name);

  res.register();

  return res;
}

CollectionResource collection(String name) {
  var res = CollectionResource(name);

  res.register();

  return res;
}

Schedule schedule(String name) {
  var res = Schedule(name);

  res.register();

  return res;
}

SecretResource secret(String name) {
  var res = SecretResource(name);

  res.register();

  return res;
}

Topic topic(String name) {
  var res = Topic(name);

  res.register();

  return res;
}

Websocket websocket(String name) {
  var res = Websocket(name);

  res.register();

  return res;
}
