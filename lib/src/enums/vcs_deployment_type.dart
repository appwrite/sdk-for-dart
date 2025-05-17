part of '../../enums.dart';

enum VCSDeploymentType {
    branch(value: 'branch'),
    commit(value: 'commit'),
    tag(value: 'tag');

    const VCSDeploymentType({
        required this.value
    });

    final String value;

    String toJson() => value;
}