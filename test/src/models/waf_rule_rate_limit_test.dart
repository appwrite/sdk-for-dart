import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('WafRuleRateLimit', () {
    test('model', () {
      final model = WafRuleRateLimit(
        $id: "wafRule1",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        name: "Block anonymous POST traffic",
        description: "Blocks anonymous POST calls to /v1/graphql",
        teamId: "5e5ea5c16897e",
        projectId: "cloudConsole",
        resourceType: "functions",
        resourceId: "functionId",
        action: WafRuleAction.bypass,
        priority: 100,
        enabled: true,
        conditions: [],
        config: {},
        limit: 1000,
        interval: 60,
        key: "userId",
        strategy: "slidingWindow",
        maxBucketSize: 200,
      );

      final map = model.toMap();
      final result = WafRuleRateLimit.fromMap(map);

      expect(result.$id, "wafRule1");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.name, "Block anonymous POST traffic");
      expect(result.description, "Blocks anonymous POST calls to /v1/graphql");
      expect(result.teamId, "5e5ea5c16897e");
      expect(result.projectId, "cloudConsole");
      expect(result.resourceType, "functions");
      expect(result.resourceId, "functionId");
      expect(result.action, WafRuleAction.bypass);
      expect(result.priority, 100);
      expect(result.enabled, true);
      expect(result.conditions, []);
      expect(result.config, {});
      expect(result.limit, 1000);
      expect(result.interval, 60);
      expect(result.key, "userId");
      expect(result.strategy, "slidingWindow");
      expect(result.maxBucketSize, 200);
    });
  });
}
