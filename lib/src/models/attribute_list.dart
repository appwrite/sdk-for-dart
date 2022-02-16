part of dart_appwrite.models;

/// Attributes List
class AttributeList {
    /// Total sum of items in the list.
    final int sum;
    /// List of attributes.
    final List<AbstractAttribute> attributes;

    AttributeList({
        required this.sum,
        required this.attributes,
    });

    factory AttributeList.fromMap(Map<String, dynamic> map) {
        return AttributeList(
            sum: map['sum'],
            attributes: AttributesFromMap(map['attributes'] as Map<String, dynamic>),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "attributes": attributes,
        };
    }
}

List<AbstractAttribute> AttributesFromMap(Map<String,dynamic> map) {
    List<AbstractAttribute> list = [];
    for(MapEntry<String,dynamic> entry in map.entries) {
        AbstractAttribute attribute;
        switch(map['type'] as String) {
            case 'string':
                if(map['format'] != null) {
                    switch(map['format'] as String) {
                        case "url":
                            attribute = AttributeUrl.fromMap(map);
                            break;
                        case "email":
                            attribute = AttributeEmail.fromMap(map);
                            break;
                        case "ip":
                            attribute = AttributeIp.fromMap(map);
                            break;
                        case "enum":
                            attribute = AttributeEnum.fromMap(map);
                            break;
                        default:
                            throw Exception('Unknown type: Cannot create Attribute of type ${map['type']} and format ${map['format']}');
                    }
                } else {
                    attribute = AttributeString.fromMap(map);
                }
                break;
            case 'integer':
                attribute = AttributeInteger.fromMap(map);
                break;
            case 'double':
                attribute = AttributeFloat.fromMap(map);
                break;
            case 'boolean':
                attribute = AttributeBoolean.fromMap(map);
                break;
            default:
                throw Exception('Unknown type: Cannot create Attribute of type ${map['type']}');
        }
        list.add(attribute);
    }
    return list;
}
