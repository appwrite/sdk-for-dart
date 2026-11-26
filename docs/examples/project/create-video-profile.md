```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Project project = Project(client);

models.VideoProfile result = await project.createVideoProfile(
    profileId: '<PROFILE_ID>',
    name: '<NAME>',
    videoBitRate: 32000,
    audioBitRate: 32000,
    width: 16,
    height: 16,
    codec: enums.VideoCodecId.h264, // (optional)
);
```
