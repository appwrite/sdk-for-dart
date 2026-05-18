part of '../../enums.dart';

enum ProjectOAuth2GooglePrompt {
    none(value: 'none'),
    consent(value: 'consent'),
    selectAccount(value: 'select_account');

    const ProjectOAuth2GooglePrompt({
        required this.value
    });

    final String value;

    String toJson() => value;
}