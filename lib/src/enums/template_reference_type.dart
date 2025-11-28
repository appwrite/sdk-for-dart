part of '../../enums.dart';

enum TemplateReferenceType {
    branch(value: 'branch'),
    commit(value: 'commit'),
    tag(value: 'tag');

    const TemplateReferenceType({
        required this.value
    });

    final String value;

    String toJson() => value;
}