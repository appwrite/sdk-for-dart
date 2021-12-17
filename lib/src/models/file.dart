part of dart_appwrite.models;

/// File
class File {
    /// File ID.
    final String $id;
    /// File permissions.
    final Permissions $permissions;
    /// File name.
    final String name;
    /// File creation date in Unix timestamp.
    final int dateCreated;
    /// File MD5 signature.
    final String signature;
    /// File mime type.
    final String mimeType;
    /// File original size in bytes.
    final int sizeOriginal;

    File({
        required this.$id,
        required this.$permissions,
        required this.name,
        required this.dateCreated,
        required this.signature,
        required this.mimeType,
        required this.sizeOriginal,
    });

    factory File.fromMap(Map<String, dynamic> map) {
        return File(
            $id: map['\$id'].toString(),
            $permissions: Permissions.fromMap(map['\$permissions']),
            name: map['name'].toString(),
            dateCreated: map['dateCreated'],
            signature: map['signature'].toString(),
            mimeType: map['mimeType'].toString(),
            sizeOriginal: map['sizeOriginal'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$permissions": $permissions.toMap(),
            "name": name,
            "dateCreated": dateCreated,
            "signature": signature,
            "mimeType": mimeType,
            "sizeOriginal": sizeOriginal,
        };
    }
}
