part of '../../models.dart';

/// Email Templates List
class EmailTemplateList implements Model {
    /// Total number of templates that matched your query.
    final int total;

    /// List of templates.
    final List<EmailTemplate> templates;

    EmailTemplateList({
        required this.total,
        required this.templates,
    });

    factory EmailTemplateList.fromMap(Map<String, dynamic> map) {
        return EmailTemplateList(
            total: map['total'],
            templates: List<EmailTemplate>.from(map['templates'].map((p) => EmailTemplate.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "templates": templates.map((p) => p.toMap()).toList(),
        };
    }
}
