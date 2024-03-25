part of '../../models.dart';

/// AttributeRelationship
class AttributeRelationship implements Model {
    /// Attribute Key.
    final String key;
    /// Attribute type.
    final String type;
    /// Attribute status. Possible values: `available`, `processing`, `deleting`, `stuck`, or `failed`
    final String status;
    /// Error message. Displays error generated on failure of creating or deleting an attribute.
    final String error;
    /// Is attribute required?
    final bool xrequired;
    /// Is attribute an array?
    final bool? array;
    /// The ID of the related collection.
    final String relatedCollection;
    /// The type of the relationship.
    final String relationType;
    /// Is the relationship two-way?
    final bool twoWay;
    /// The key of the two-way relationship.
    final String twoWayKey;
    /// How deleting the parent document will propagate to child documents.
    final String onDelete;
    /// Whether this is the parent or child side of the relationship
    final String side;

    AttributeRelationship({
        required this.key,
        required this.type,
        required this.status,
        required this.error,
        required this.xrequired,
        this.array,
        required this.relatedCollection,
        required this.relationType,
        required this.twoWay,
        required this.twoWayKey,
        required this.onDelete,
        required this.side,
    });

    factory AttributeRelationship.fromMap(Map<String, dynamic> map) {
        return AttributeRelationship(
            key: map['key'].toString(),
            type: map['type'].toString(),
            status: map['status'].toString(),
            error: map['error'].toString(),
            xrequired: map['required'],
            array: map['array'],
            relatedCollection: map['relatedCollection'].toString(),
            relationType: map['relationType'].toString(),
            twoWay: map['twoWay'],
            twoWayKey: map['twoWayKey'].toString(),
            onDelete: map['onDelete'].toString(),
            side: map['side'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "key": key,
            "type": type,
            "status": status,
            "error": error,
            "required": xrequired,
            "array": array,
            "relatedCollection": relatedCollection,
            "relationType": relationType,
            "twoWay": twoWay,
            "twoWayKey": twoWayKey,
            "onDelete": onDelete,
            "side": side,
        };
    }
}
