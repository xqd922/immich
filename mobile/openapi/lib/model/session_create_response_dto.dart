//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionCreateResponseDto {
  /// Returns a new [SessionCreateResponseDto] instance.
  SessionCreateResponseDto({
    required this.createdAt,
    required this.current,
    required this.deviceOS,
    required this.deviceType,
    this.expiresAt,
    required this.id,
    required this.isPendingSyncReset,
    required this.token,
    required this.updatedAt,
  });

  String createdAt;

  bool current;

  String deviceOS;

  String deviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  String id;

  bool isPendingSyncReset;

  String token;

  String updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SessionCreateResponseDto &&
    other.createdAt == createdAt &&
    other.current == current &&
    other.deviceOS == deviceOS &&
    other.deviceType == deviceType &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    other.isPendingSyncReset == isPendingSyncReset &&
    other.token == token &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (current.hashCode) +
    (deviceOS.hashCode) +
    (deviceType.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id.hashCode) +
    (isPendingSyncReset.hashCode) +
    (token.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SessionCreateResponseDto[createdAt=$createdAt, current=$current, deviceOS=$deviceOS, deviceType=$deviceType, expiresAt=$expiresAt, id=$id, isPendingSyncReset=$isPendingSyncReset, token=$token, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt;
      json[r'current'] = this.current;
      json[r'deviceOS'] = this.deviceOS;
      json[r'deviceType'] = this.deviceType;
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
    //  json[r'expiresAt'] = null;
    }
      json[r'id'] = this.id;
      json[r'isPendingSyncReset'] = this.isPendingSyncReset;
      json[r'token'] = this.token;
      json[r'updatedAt'] = this.updatedAt;
    return json;
  }

  /// Returns a new [SessionCreateResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SessionCreateResponseDto? fromJson(dynamic value) {
    upgradeDto(value, "SessionCreateResponseDto");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SessionCreateResponseDto(
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        current: mapValueOfType<bool>(json, r'current')!,
        deviceOS: mapValueOfType<String>(json, r'deviceOS')!,
        deviceType: mapValueOfType<String>(json, r'deviceType')!,
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        id: mapValueOfType<String>(json, r'id')!,
        isPendingSyncReset: mapValueOfType<bool>(json, r'isPendingSyncReset')!,
        token: mapValueOfType<String>(json, r'token')!,
        updatedAt: mapValueOfType<String>(json, r'updatedAt')!,
      );
    }
    return null;
  }

  static List<SessionCreateResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SessionCreateResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SessionCreateResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SessionCreateResponseDto> mapFromJson(dynamic json) {
    final map = <String, SessionCreateResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SessionCreateResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SessionCreateResponseDto-objects as value to a dart map
  static Map<String, List<SessionCreateResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SessionCreateResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SessionCreateResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'current',
    'deviceOS',
    'deviceType',
    'id',
    'isPendingSyncReset',
    'token',
    'updatedAt',
  };
}

