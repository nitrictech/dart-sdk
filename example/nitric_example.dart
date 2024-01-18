import 'package:dart_sdk/src/api/collection.dart';
import 'package:dart_sdk/src/nitric.dart';
import 'package:dart_sdk/src/resources/common.dart';
import 'package:uuid/uuid.dart';

class Profile {
  String name;
  int age;
  String homeTown;

  Profile(this.name, this.age, this.homeTown);

  Profile.fromJson(Map<String, dynamic> contents)
      : name = contents["name"] as String,
        age = contents["age"] as int,
        homeTown = contents["homeTown"] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'homeTown': homeTown,
      };
}

void main() {
  // Create an API named 'public'
  final profileApi = api("public");

  // Define a collection named 'profiles', then request reading and writing permissions.
  final profiles = collection<Profile>("profiles").requires([
    CollectionPermission.writing,
    CollectionPermission.deleting,
    CollectionPermission.reading
  ]);

  final profilesImg = bucket("profilesImg")
      .requires([BucketPermission.reading, BucketPermission.writing]);

  profileApi.post("/profiles", (ctx) async {
    final uuid = Uuid();

    final id = uuid.v4();

    final profile = Profile.fromJson(ctx.req.json());

    // Store the new profile in the profiles collection
    await profiles.key(id).put(profile);

    // Send a success response.
    ctx.resp.body = "Profile $id created.";

    return ctx;
  });

  profileApi.get("/profiles/:id", (ctx) async {
    final id = ctx.req.pathParams["id"]!;

    try {
      // Retrieve and return the profile data
      final profile = await profiles.key(id).access();
      ctx.resp.json(profile.toJson());
    } on KeyNotFoundException catch (e) {
      print(e);
      ctx.resp.status = 404;
      ctx.resp.body = "Profile $id not found.";
    }

    return ctx;
  });

  profileApi.get("/profiles", (ctx) async {
    // Return all profiles
    final allProfiles = await profiles.list();

    ctx.resp.json({'profiles': allProfiles});

    return ctx;
  });

  profileApi.delete("/profiles/:id", (ctx) async {
    final id = ctx.req.pathParams["id"]!;

    // Delete the profile
    try {
      await profiles.key(id).unset();
      ctx.resp.body = "Profile $id removed.";
    } on KeyNotFoundException catch (e) {
      ctx.resp.status = 404;
      ctx.resp.body = "Profile $id not found.";
    }

    return ctx;
  });

  profileApi.get("/profiles/:id/image/upload", (ctx) async {
    final id = ctx.req.pathParams["id"];

    // Return a signed upload URL, which provides temporary access to upload a file.
    final photoUrl =
        await profilesImg.file("images/$id/photo.png").getUploadUrl();

    ctx.req.body = photoUrl;

    return ctx;
  });

  profileApi.get("/profiles/:id/image/download", (ctx) async {
    final id = ctx.req.pathParams["id"];

    // Return a signed download URL, which provides temporary access to download a file.
    final photoUrl =
        await profilesImg.file("images/$id/photo.png").getDownloadUrl();

    ctx.req.body = photoUrl;

    return ctx;
  });

  profileApi.get("/profiles/:id/image/view", (ctx) async {
    final id = ctx.req.pathParams["id"];

    // Redirect to a signed read-only file URL.
    final photoUrl =
        await profilesImg.file("images/$id/photo.png").getDownloadUrl();

    ctx.resp.status = 303;
    ctx.resp.headers["Location"] = [photoUrl];

    return ctx;
  });
}
