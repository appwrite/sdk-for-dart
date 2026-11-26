```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setSession(''); // The user session to authenticate with

Videos videos = Videos(client);

models.Video result = await videos.create(
    videoId: '<VIDEO_ID>',
    bucketId: '<BUCKET_ID>',
    fileId: '<FILE_ID>',
    name: '<NAME>', // (optional)
    permissions: [Permission.read(Role.any())], // (optional)
);
```
