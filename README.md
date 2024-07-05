<p align="center">
  <a href="https://nitric.io">
    <img src="assets/nitric-logo.svg" width="120" alt="Nitric Logo"/>
  </a>
</p>

<p align="center">
  Build <a href="https://nitric.io">Nitric</a> applications with Dart
</p>

<p align="center">
  <a href="https://nitric.io/chat"><img alt="Discord" src="https://img.shields.io/discord/955259353043173427?label=discord&style=for-the-badge"></a>
</p>

The Dart SDK supports the use of the Nitric framework with Dart and Flutter. For more information, check out the main [Nitric repo](https://github.com/nitrictech/nitric).

Nitric SDKs provide an infrastructure-as-code style that lets you define resources in code. You can also write the functions that support the logic behind APIs, subscribers and schedules.

You can request the type of access you need to resources such as publishing for topics, without dealing directly with IAM or policy documents.

## Usage

### Starting a new project

Install the [Nitric CLI](https://nitric.io/docs/getting-started/installation), then generate your project:

```bash
nitric new hello-world dart-starter
```

### Add to an existing project

First of all, you need to install the library:

```yaml
dart pub add nitric_sdk
```

Then you're able to import the library and create cloud resources:

```dart
import 'package:nitric_sdk/nitric.dart';

void main() {
  final publicApi = Nitric.api("public");
  final uploads = Nitric.bucket("uploads").allow([
    BucketPermission.write,
  ]);

  publicApi.get("/upload", (ctx) async {
    final photo = uploads.file("images/photo.png");

    final url = await photo.getUploadUrl(600);

    ctx.res.json({"url": url});

    return ctx;
  });
}
```

## Status

The SDK is in early stage development and APIs and interfaces are still subject to breaking changes. We’d love your feedback as we build additional functionality!

- Reference Documentation: https://nitric.io/docs/reference/dart
- Guides: https://nitric.io/docs/guides/dart

## Learn more

Learn more by checking out the [Nitric documentation](https://nitric.io/docs).

## Get in touch:

- Join us on [Discord](https://nitric.io/chat)

- Ask questions in [GitHub discussions](https://github.com/nitrictech/nitric/discussions)

- Find us on [Twitter](https://twitter.com/nitric_io)

- Send us an [email](mailto:maintainers@nitric.io)
