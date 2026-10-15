```dart
import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart' as models;

Client client = Client()
    .setEndpoint('https://<REGION>.cloud.appwrite.io/v1') // Your API Endpoint
    .setProject('<YOUR_PROJECT_ID>') // Your project ID
    .setKey('<YOUR_API_KEY>'); // Your secret API key

VectorsDB vectorsDB = VectorsDB(client);

models.DocumentList result = await vectorsDB.upsertDocuments(
    databaseId: '<DATABASE_ID>',
    collectionId: '<COLLECTION_ID>',
    documents: [
	    {
	        "\$id": "example1",
	        "embeddings": [
	            0.12,
	            -0.55,
	            0.88,
	            1.02
	        ],
	        "metadata": {
	            "name": "First document"
	        }
	    }
	],
    transactionId: '<TRANSACTION_ID>', // (optional)
);
```
