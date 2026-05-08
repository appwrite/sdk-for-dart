part of '../../enums.dart';

enum ProxyResourceType {
    site(value: 'site'),
    function(value: 'function');

    const ProxyResourceType({
        required this.value
    });

    final String value;

    String toJson() => value;
}