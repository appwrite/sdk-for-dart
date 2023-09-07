# Appwrite Dart SDK

[![pub package](https://img.shields.io/pub/v/dart_appwrite.svg?style=flat-square)](https://pub.dartlang.org/packages/dart_appwrite)
![License](https://img.shields.io/github/license/appwrite/sdk-for-dart.svg?style=flat-square)
![Version](https://img.shields.io/badge/api%20version-1.4.x-blue.svg?style=flat-square)
[![Build Status](https://img.shields.io/travis/com/appwrite/sdk-generator?style=flat-square)](https://travis-ci.com/appwrite/sdk-generator)
[![Twitter Account](https://img.shields.io/twitter/follow/appwrite?color=00acee&label=twitter&style=flat-square)](https://twitter.com/appwrite)
[![Discord](https://img.shields.io/discord/564160730845151244?label=discord&style=flat-square)](https://appwrite.io/discord)

**This SDK is compatible with Appwrite server version 1.4.x. For older versions, please check [previous releases](https://github.com/appwrite/sdk-for-dart/releases).**

 > This is the Dart SDK for integrating with Appwrite from your Dart server-side code. If you're looking for the Flutter SDK you should check [appwrite/sdk-for-flutter](https://github.com/appwrite/sdk-for-flutter)

Appwrite is an open-source backend as a service server that abstract and simplify complex and repetitive development tasks behind a very simple to use REST API. Appwrite aims to help you develop your apps faster and in a more secure way. Use the Dart SDK to integrate your app with the Appwrite server to easily start interacting with all of Appwrite backend APIs and tools. For full API documentation and tutorials go to [https://appwrite.io/docs](https://appwrite.io/docs)



![Appwrite](https://appwrite.io/images/github.png)

## Installation

Add this to your package's `pubspec.yaml` file:

```yml
dependencies:
  dart_appwrite: ^9.0.2
```

You can install packages from the command line:

```bash
dart pub add dart_appwrite
```


## Getting Started

### Initialize & Make API Request
Once you add the dependencies, its extremely easy to get started with the SDK; All you need to do is import the package in your code, set your Appwrite credentials, and start making API calls. Below is a simple example:

```dart
import 'package:dart_appwrite/dart_appwrite.dart';

void main() async {
  Client client = Client()
    .setEndpoint('http://[HOSTNAME_OR_IP]/v1') // Make sure your endpoint is accessible
    .setProject('5ff3379a01d25') // Your project ID
    .setKey('cd868c7af8bdc893b4...93b7535db89')
    .setSelfSigned(); // Use only on dev mode with a self-signed SSL cert

  Users users = Users(client);

  try {
    final user = await users.create(userId: ID.unique(), email: ‘email@example.com’,password: ‘password’, name: ‘name’);
    print(user.toMap());
  } on AppwriteException catch(e) {
    print(e.message);
  }
}
```

### Error handling
The Appwrite Dart SDK raises `AppwriteException` object with `message`, `code` and `response` properties. You can handle any errors by catching `AppwriteException` and present the `message` to the user or handle it yourself based on the provided error information. Below is an example.

```dart
Users users = Users(client);

try {
  final user = await users.create(userId: ID.unique(), email: ‘email@example.com’,password: ‘password’, name: ‘name’);
  print(user.toMap());
} on AppwriteException catch(e) {
  //show message to user or do other operation based on error as required
  print(e.message);
}
```

### Learn more
You can use the following resources to learn more and get help
- 🚀 [Getting Started Tutorial](https://appwrite.io/docs/getting-started-for-server)
- 📜 [Appwrite Docs](https://appwrite.io/docs)
- 💬 [Discord Community](https://appwrite.io/discord)
- 🚂 [Appwrite Dart Playground](https://github.com/appwrite/playground-for-dart)


## Contribution

This library is auto-generated by Appwrite custom [SDK Generator](https://github.com/appwrite/sdk-generator). To learn more about how you can help us improve this SDK, please check the [contribution guide](https://github.com/appwrite/sdk-generator/blob/master/CONTRIBUTING.md) before sending a pull-request.

## License

Please see the [BSD-3-Clause license](https://raw.githubusercontent.com/appwrite/appwrite/master/LICENSE) file for more information.