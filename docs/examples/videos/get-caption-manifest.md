```dart
import 'dart:typed_data';
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Videos videos = Videos(client);

Uint8List result = await videos.getCaptionManifest(
    videoId: '<VIDEO_ID>',
    output: enums.VideoOutput.hls,
    captionId: '<CAPTION_ID>',
);
```
