import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/resources.dart';
import 'package:uuid/uuid.dart';

class Profile {
  late String name;
  late int age;
  late String homeTown;
  late List<String> contacts;

  Profile({required this.name, required this.age, required this.homeTown});

  Profile.fromJson(Map<String, dynamic> contents)
      : name = contents["name"] as String,
        age = contents["age"] as int,
        homeTown = contents["homeTown"] as String,
        contacts = List<String>.from(contents["contacts"]);

  Map<String, dynamic> toJson() =>
      {'name': name, 'age': age, 'homeTown': homeTown, 'contacts': contacts};
}

void main() {
  var oidc = Nitric.oidcRule(
      "profile security",
      "https://dev-w7gm5ldb.us.auth0.com",
      ["https://test-security-definition/"]);

  // Create an API named 'public'
  final profileApi = Nitric.api("public",
      opts: ApiOptions(security: [
        oidc(["user:read"])
      ]));

  // Define a collection named 'profiles', then request reading and writing permissions.
  final profiles = Nitric.kv("profiles").allow([
    KeyValueStorePermission.get,
    KeyValueStorePermission.delete,
    KeyValueStorePermission.set
  ]);

  final profilesImg = Nitric.bucket("profilesImg")
      .allow([BucketPermission.read, BucketPermission.write]);

  profileApi.post("/profiles", (ctx) async {
    final uuid = Uuid();

    final id = uuid.v4();

    try {
      var profile = Profile.fromJson(ctx.req.json());
      // Store the new profile in the profiles collection
      await profiles.set(id, profile.toJson());

      // Send a success response.
      ctx.res.body = "Profile $id created.";
    } on Exception catch (e) {
      ctx.res.status = 400;
      ctx.res.body = "An error occurred: $e";
    }

    return ctx;
  });

  profileApi.get("/profiles/:id", (ctx) async {
    final id = ctx.req.pathParams["id"]!;

    try {
      // Retrieve and return the profile data
      final profile = await profiles.get(id);
      ctx.res.json(profile);
    } on Exception catch (e) {
      print(e);
      ctx.res.status = 404;
      ctx.res.body = "Profile $id not found.";
    }

    return ctx;
  });

  profileApi.delete("/profiles/:id", (ctx) async {
    final id = ctx.req.pathParams["id"]!;

    // Delete the profile
    try {
      await profiles.delete(id);
      ctx.res.body = "Profile $id removed.";
    } on Exception catch (e) {
      ctx.res.status = 404;
      ctx.res.body = "Profile $id not found. $e";
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

    ctx.res.status = 303;
    ctx.res.headers["Location"] = [photoUrl];

    return ctx;
  });
}
