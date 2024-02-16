part of dart_appwrite.enums;

enum RelationMutate {
    cascade(value: 'cascade'),
    restrict(value: 'restrict'),
    setNull(value: 'setNull');

    const RelationMutate({
        required this.value
    });

    final String value;

    String toJson() => value;
}