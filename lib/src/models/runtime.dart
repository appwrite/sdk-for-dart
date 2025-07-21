part of '../../models.dart';

/// Runtime
class Runtime implements Model {
    /// Runtime ID.
    final String $id;

    /// Parent runtime key.
    final String key;

    /// Runtime Name.
    final String name;

    /// Runtime version.
    final String version;

    /// Base Docker image used to build the runtime.
    final String base;

    /// Image name of Docker Hub.
    final String image;

    /// Name of the logo image.
    final String logo;

    /// List of supported architectures.
    final List<String> supports;

    Runtime({
        required this.$id,
        required this.key,
        required this.name,
        required this.version,
        required this.base,
        required this.image,
        required this.logo,
        required this.supports,
    });

    factory Runtime.fromMap(Map<String, dynamic> map) {
        return Runtime(
            $id: 
map['\$id'].toString(),
            key: 
map['key'].toString(),
            name: 
map['name'].toString(),
            version: 
map['version'].toString(),
            base: 
map['base'].toString(),
            image: 
map['image'].toString(),
            logo: 
map['logo'].toString(),
            supports: 
List.from(map['supports'] ?? []),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "key": key,
            "name": name,
            "version": version,
            "base": base,
            "image": image,
            "logo": logo,
            "supports": supports,
        };
    }

}
