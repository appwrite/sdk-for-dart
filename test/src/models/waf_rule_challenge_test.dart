import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('WafRuleChallenge', () {
    test('model', () {
      final model = WafRuleChallenge(
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
        challengeType: "compute",
        difficulty: 3,
        ttl: 1800,
      );

      final map = model.toMap();
      final result = WafRuleChallenge.fromMap(map);

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
      expect(result.challengeType, "compute");
      expect(result.difficulty, 3);
      expect(result.ttl, 1800);
    });
  });
}
