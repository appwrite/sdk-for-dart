```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Videos videos = Videos(client);

models.VideoCaption result = await videos.createCaption(
    videoId: '<VIDEO_ID>',
    bucketId: '<BUCKET_ID>',
    fileId: '<FILE_ID>',
    name: '<NAME>',
    language: 'aar',
    xdefault: false, // (optional)
);
```
