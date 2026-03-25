part of '../../enums.dart';

enum VCSReferenceType {
    branch(value: 'branch'),
    commit(value: 'commit'),
    tag(value: 'tag');

    const VCSReferenceType({
        required this.value
    });

    final String value;

    String toJson() => value;
}