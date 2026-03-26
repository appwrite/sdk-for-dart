part of '../../enums.dart';

enum TemplateReferenceType {
    commit(value: 'commit'),
    branch(value: 'branch'),
    tag(value: 'tag');

    const TemplateReferenceType({
        required this.value
    });

    final String value;

    String toJson() => value;
}