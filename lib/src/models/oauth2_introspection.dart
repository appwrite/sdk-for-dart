part of '../../models.dart';

/// OAuth2 Introspection
class Oauth2Introspection implements Model {
  /// Whether the token is currently active. An inactive token carries no other claims (RFC 7662).
  final bool active;

  /// Kind of token that was introspected. Can be one of: `access_token` or `refresh_token`.
  final String? token_use;

  /// OAuth2 token type.
  final String? token_type;

  /// Space-separated scopes granted to the token.
  final String? scope;

  /// OAuth2 client ID the token was issued to.
  final String? client_id;

  /// ID of the user who authorized the token.
  final String? sub;

  /// Audiences the token is intended for. The first entry is the project API base URL; any further entries are the resource indicators requested at authorization time (RFC 8707).
  final List<String>? aud;

  /// Issuer URL of the token.
  final String? iss;

  /// Expiration time as a Unix timestamp in seconds.
  final int? exp;

  /// Issued-at time as a Unix timestamp in seconds.
  final int? iat;

  /// Unique identifier of the token.
  final String? jti;

  /// Granted RFC 9396 authorization details, restricted to what the user can currently access.
  final List<Map>? authorization_details;

  Oauth2Introspection({
    required this.active,
    this.token_use,
    this.token_type,
    this.scope,
    this.client_id,
    this.sub,
    this.aud,
    this.iss,
    this.exp,
    this.iat,
    this.jti,
    this.authorization_details,
  });
  factory Oauth2Introspection.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'active': false,
      ...map,
    };

    return Oauth2Introspection(
      active: map['active'],
      token_use: map['token_use']?.toString(),
      token_type: map['token_type']?.toString(),
      scope: map['scope']?.toString(),
      client_id: map['client_id']?.toString(),
      sub: map['sub']?.toString(),
      aud: List.from(map['aud'] ?? []),
      iss: map['iss']?.toString(),
      exp: map['exp'],
      iat: map['iat'],
      jti: map['jti']?.toString(),
      authorization_details: List.from(map['authorization_details'] ?? []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "active": active,
      "token_use": token_use,
      "token_type": token_type,
      "scope": scope,
      "client_id": client_id,
      "sub": sub,
      "aud": aud,
      "iss": iss,
      "exp": exp,
      "iat": iat,
      "jti": jti,
      "authorization_details": authorization_details,
    };
  }
}
