part of '../../models.dart';

/// AlgoPHPass
class AlgoPhpass<T> implements Model {
    /// Algo type.
    final String type;

    AlgoPhpass({
        required this.type,
    });

    factory AlgoPhpass.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return AlgoPhpass(
            type: 
map['type'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "type": type,
        };
    }

    // Public getters for private underscore fields
}
