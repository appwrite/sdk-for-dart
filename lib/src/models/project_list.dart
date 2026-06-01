part of '../../models.dart';

/// Projects List
class ProjectList implements Model {
    /// Total number of projects that matched your query.
    final int total;

    /// List of projects.
    final List<Project> projects;

    ProjectList({
        required this.total,
        required this.projects,
    });

    factory ProjectList.fromMap(Map<String, dynamic> map) {
        return ProjectList(
            total: map['total'],
            projects: List<Project>.from(map['projects'].map((p) => Project.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "projects": projects.map((p) => p.toMap()).toList(),
        };
    }
}
