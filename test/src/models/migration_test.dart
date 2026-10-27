import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Migration', () {
    test('model', () {
      final model = Migration(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        status: "pending",
        stage: "init",
        source: "Appwrite",
        destination: "Appwrite",
        resources: [],
        resourceId: "collectionId",
        resourceInternalId: "1",
        resourceType: "collection",
        parentResourceId: "databaseId",
        parentResourceInternalId: "1",
        parentResourceType: "database",
        destinationResourceId: "databaseId",
        destinationResourceInternalId: "1",
        destinationResourceType: "database",
        statusCounters: {},
        resourceData: [],
        errors: [],
        options: {},
      );

      final map = model.toMap();
      final result = Migration.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.status, "pending");
      expect(result.stage, "init");
      expect(result.source, "Appwrite");
      expect(result.destination, "Appwrite");
      expect(result.resources, []);
      expect(result.resourceId, "collectionId");
      expect(result.resourceInternalId, "1");
      expect(result.resourceType, "collection");
      expect(result.parentResourceId, "databaseId");
      expect(result.parentResourceInternalId, "1");
      expect(result.parentResourceType, "database");
      expect(result.destinationResourceId, "databaseId");
      expect(result.destinationResourceInternalId, "1");
      expect(result.destinationResourceType, "database");
      expect(result.statusCounters, {});
      expect(result.resourceData, []);
      expect(result.errors, []);
      expect(result.options, {});
    });
  });
}
