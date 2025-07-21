part of '../../models.dart';

/// Framework Adapter
class FrameworkAdapter<T> implements Model {
    /// Adapter key.
    final String key;

    /// Default command to download dependencies.
    final String installCommand;

    /// Default command to build site into output directory.
    final String buildCommand;

    /// Default output directory of build.
    final String outputDirectory;

    /// Name of fallback file to use instead of 404 page. If null, Appwrite 404 page will be displayed.
    final String fallbackFile;

    FrameworkAdapter({
        required this.key,
        required this.installCommand,
        required this.buildCommand,
        required this.outputDirectory,
        required this.fallbackFile,
    });

    factory FrameworkAdapter.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return FrameworkAdapter(
            key: 
map['key'].toString(),
            installCommand: 
map['installCommand'].toString(),
            buildCommand: 
map['buildCommand'].toString(),
            outputDirectory: 
map['outputDirectory'].toString(),
            fallbackFile: 
map['fallbackFile'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "key": key,
            "installCommand": installCommand,
            "buildCommand": buildCommand,
            "outputDirectory": outputDirectory,
            "fallbackFile": fallbackFile,
        };
    }

    // Public getters for private underscore fields
}
