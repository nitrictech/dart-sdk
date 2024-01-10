import 'resources/common.dart';

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

CollectionResource collection(String name) {
  var res = CollectionResource(name);

  res.register();

  return res;
}

ScheduleResource schedule(String name) {
  var res = ScheduleResource(name);

  res.register();

  return res;
}

SecretResource secret(String name) {
  var res = SecretResource(name);

  res.register();

  return res;
}

TopicResource topic(String name) {
  var res = TopicResource(name);

  res.register();

  return res;
}
