```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;
import 'package:dart_appwrite/enums.dart' as enums;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

Embeddings embeddings = Embeddings(client);

models.EmbeddingList result = await embeddings.createTextEmbeddings(
    texts: ["Appwrite helps developers build applications.", "Find documents with semantic search."],
    model: enums.EmbeddingModel.nomicEmbedText, // (optional)
);
```
