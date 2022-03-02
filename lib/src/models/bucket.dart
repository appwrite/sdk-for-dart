part of dart_appwrite.models;

/// Bucket
class Bucket {
    /// Bucket ID.
    final String $id;
    /// File read permissions.
    final List $read;
    /// File write permissions.
    final List $write;
    /// Bucket permission model. Possible values: `bucket` or `file`
    final String permission;
    /// Bucket creation date in Unix timestamp.
    final int dateCreated;
    /// Bucket update date in Unix timestamp.
    final int dateUpdated;
    /// Bucket name.
    final String name;
    /// Bucket enabled.
    final bool enabled;
    /// Maximum file size supported.
    final int maximumFileSize;
    /// Allowed file extensions.
    final List allowedFileExtensions;
    /// Bucket is encrypted.
    final bool encryption;
    /// Virus scanning is enabled.
    final bool antivirus;

    Bucket({
        required this.$id,
        required this.$read,
        required this.$write,
        required this.permission,
        required this.dateCreated,
        required this.dateUpdated,
        required this.name,
        required this.enabled,
        required this.maximumFileSize,
        required this.allowedFileExtensions,
        required this.encryption,
        required this.antivirus,
    });

    factory Bucket.fromMap(Map<String, dynamic> map) {
        return Bucket(
            $id: map['\$id'].toString(),
            $read: map['\$read'],
            $write: map['\$write'],
            permission: map['permission'].toString(),
            dateCreated: map['dateCreated'],
            dateUpdated: map['dateUpdated'],
            name: map['name'].toString(),
            enabled: map['enabled'],
            maximumFileSize: map['maximumFileSize'],
            allowedFileExtensions: map['allowedFileExtensions'],
            encryption: map['encryption'],
            antivirus: map['antivirus'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$read": $read,
            "\$write": $write,
            "permission": permission,
            "dateCreated": dateCreated,
            "dateUpdated": dateUpdated,
            "name": name,
            "enabled": enabled,
            "maximumFileSize": maximumFileSize,
            "allowedFileExtensions": allowedFileExtensions,
            "encryption": encryption,
            "antivirus": antivirus,
        };
    }
}
