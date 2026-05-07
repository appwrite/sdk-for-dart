part of '../../models.dart';

/// Mock Numbers List
class MockNumberList implements Model {
    /// Total number of mockNumbers that matched your query.
    final int total;

    /// List of mockNumbers.
    final List<MockNumber> mockNumbers;

    MockNumberList({
        required this.total,
        required this.mockNumbers,
    });

    factory MockNumberList.fromMap(Map<String, dynamic> map) {
        return MockNumberList(
            total: map['total'],
            mockNumbers: List<MockNumber>.from(map['mockNumbers'].map((p) => MockNumber.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "mockNumbers": mockNumbers.map((p) => p.toMap()).toList(),
        };
    }
}
