// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username =>
      throw _privateConstructorUsedError; // UserLocation? location,
// @TimestampConverter() DateTime? dateOfBirth,
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  String? get profileWallpaperUrl => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  bool? get hasSubscription => throw _privateConstructorUsedError;
  List<String>? get skills => throw _privateConstructorUsedError;
  Map<String, bool>? get experience =>
      throw _privateConstructorUsedError; // List<Experience>? experiences,
  Map<String, bool>? get education =>
      throw _privateConstructorUsedError; // List<Education>? educations,
  String? get appInvitedCode =>
      throw _privateConstructorUsedError; // UserInviteModel? invitedBy,
// List<UserInviteModel>? invitedTo,
  bool? get inTheWaitlist => throw _privateConstructorUsedError;
  String? get inviteCode => throw _privateConstructorUsedError;
  int? get maxAllowedInvites =>
      throw _privateConstructorUsedError; // List<UserCollection>? collections,
  String? get fcmToken => throw _privateConstructorUsedError;
  Map<String, bool>? get connections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? number,
      String? email,
      String? username,
      String? profilePictureUrl,
      String? profileWallpaperUrl,
      String? about,
      bool? hasSubscription,
      List<String>? skills,
      Map<String, bool>? experience,
      Map<String, bool>? education,
      String? appInvitedCode,
      bool? inTheWaitlist,
      String? inviteCode,
      int? maxAllowedInvites,
      String? fcmToken,
      Map<String, bool>? connections});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? profilePictureUrl = freezed,
    Object? profileWallpaperUrl = freezed,
    Object? about = freezed,
    Object? hasSubscription = freezed,
    Object? skills = freezed,
    Object? experience = freezed,
    Object? education = freezed,
    Object? appInvitedCode = freezed,
    Object? inTheWaitlist = freezed,
    Object? inviteCode = freezed,
    Object? maxAllowedInvites = freezed,
    Object? fcmToken = freezed,
    Object? connections = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profileWallpaperUrl: freezed == profileWallpaperUrl
          ? _value.profileWallpaperUrl
          : profileWallpaperUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubscription: freezed == hasSubscription
          ? _value.hasSubscription
          : hasSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      appInvitedCode: freezed == appInvitedCode
          ? _value.appInvitedCode
          : appInvitedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inTheWaitlist: freezed == inTheWaitlist
          ? _value.inTheWaitlist
          : inTheWaitlist // ignore: cast_nullable_to_non_nullable
              as bool?,
      inviteCode: freezed == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maxAllowedInvites: freezed == maxAllowedInvites
          ? _value.maxAllowedInvites
          : maxAllowedInvites // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: freezed == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? number,
      String? email,
      String? username,
      String? profilePictureUrl,
      String? profileWallpaperUrl,
      String? about,
      bool? hasSubscription,
      List<String>? skills,
      Map<String, bool>? experience,
      Map<String, bool>? education,
      String? appInvitedCode,
      bool? inTheWaitlist,
      String? inviteCode,
      int? maxAllowedInvites,
      String? fcmToken,
      Map<String, bool>? connections});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? profilePictureUrl = freezed,
    Object? profileWallpaperUrl = freezed,
    Object? about = freezed,
    Object? hasSubscription = freezed,
    Object? skills = freezed,
    Object? experience = freezed,
    Object? education = freezed,
    Object? appInvitedCode = freezed,
    Object? inTheWaitlist = freezed,
    Object? inviteCode = freezed,
    Object? maxAllowedInvites = freezed,
    Object? fcmToken = freezed,
    Object? connections = freezed,
  }) {
    return _then(_$_UserModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profileWallpaperUrl: freezed == profileWallpaperUrl
          ? _value.profileWallpaperUrl
          : profileWallpaperUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubscription: freezed == hasSubscription
          ? _value.hasSubscription
          : hasSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      appInvitedCode: freezed == appInvitedCode
          ? _value.appInvitedCode
          : appInvitedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inTheWaitlist: freezed == inTheWaitlist
          ? _value.inTheWaitlist
          : inTheWaitlist // ignore: cast_nullable_to_non_nullable
              as bool?,
      inviteCode: freezed == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maxAllowedInvites: freezed == maxAllowedInvites
          ? _value.maxAllowedInvites
          : maxAllowedInvites // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: freezed == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {this.id,
      this.name,
      this.number,
      this.email,
      this.username,
      this.profilePictureUrl,
      this.profileWallpaperUrl,
      this.about,
      this.hasSubscription,
      this.skills,
      this.experience,
      this.education,
      this.appInvitedCode,
      this.inTheWaitlist,
      this.inviteCode,
      this.maxAllowedInvites,
      this.fcmToken,
      this.connections});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? number;
  @override
  final String? email;
  @override
  final String? username;
// UserLocation? location,
// @TimestampConverter() DateTime? dateOfBirth,
  @override
  final String? profilePictureUrl;
  @override
  final String? profileWallpaperUrl;
  @override
  final String? about;
  @override
  final bool? hasSubscription;
  @override
  final List<String>? skills;
  @override
  final Map<String, bool>? experience;
// List<Experience>? experiences,
  @override
  final Map<String, bool>? education;
// List<Education>? educations,
  @override
  final String? appInvitedCode;
// UserInviteModel? invitedBy,
// List<UserInviteModel>? invitedTo,
  @override
  final bool? inTheWaitlist;
  @override
  final String? inviteCode;
  @override
  final int? maxAllowedInvites;
// List<UserCollection>? collections,
  @override
  final String? fcmToken;
  @override
  final Map<String, bool>? connections;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, number: $number, email: $email, username: $username, profilePictureUrl: $profilePictureUrl, profileWallpaperUrl: $profileWallpaperUrl, about: $about, hasSubscription: $hasSubscription, skills: $skills, experience: $experience, education: $education, appInvitedCode: $appInvitedCode, inTheWaitlist: $inTheWaitlist, inviteCode: $inviteCode, maxAllowedInvites: $maxAllowedInvites, fcmToken: $fcmToken, connections: $connections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.profileWallpaperUrl, profileWallpaperUrl) ||
                other.profileWallpaperUrl == profileWallpaperUrl) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.hasSubscription, hasSubscription) ||
                other.hasSubscription == hasSubscription) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality()
                .equals(other.experience, experience) &&
            const DeepCollectionEquality().equals(other.education, education) &&
            (identical(other.appInvitedCode, appInvitedCode) ||
                other.appInvitedCode == appInvitedCode) &&
            (identical(other.inTheWaitlist, inTheWaitlist) ||
                other.inTheWaitlist == inTheWaitlist) &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode) &&
            (identical(other.maxAllowedInvites, maxAllowedInvites) ||
                other.maxAllowedInvites == maxAllowedInvites) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            const DeepCollectionEquality()
                .equals(other.connections, connections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      number,
      email,
      username,
      profilePictureUrl,
      profileWallpaperUrl,
      about,
      hasSubscription,
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(experience),
      const DeepCollectionEquality().hash(education),
      appInvitedCode,
      inTheWaitlist,
      inviteCode,
      maxAllowedInvites,
      fcmToken,
      const DeepCollectionEquality().hash(connections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final String? id,
      final String? name,
      final String? number,
      final String? email,
      final String? username,
      final String? profilePictureUrl,
      final String? profileWallpaperUrl,
      final String? about,
      final bool? hasSubscription,
      final List<String>? skills,
      final Map<String, bool>? experience,
      final Map<String, bool>? education,
      final String? appInvitedCode,
      final bool? inTheWaitlist,
      final String? inviteCode,
      final int? maxAllowedInvites,
      final String? fcmToken,
      final Map<String, bool>? connections}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get number;
  @override
  String? get email;
  @override
  String? get username;
  @override // UserLocation? location,
// @TimestampConverter() DateTime? dateOfBirth,
  String? get profilePictureUrl;
  @override
  String? get profileWallpaperUrl;
  @override
  String? get about;
  @override
  bool? get hasSubscription;
  @override
  List<String>? get skills;
  @override
  Map<String, bool>? get experience;
  @override // List<Experience>? experiences,
  Map<String, bool>? get education;
  @override // List<Education>? educations,
  String? get appInvitedCode;
  @override // UserInviteModel? invitedBy,
// List<UserInviteModel>? invitedTo,
  bool? get inTheWaitlist;
  @override
  String? get inviteCode;
  @override
  int? get maxAllowedInvites;
  @override // List<UserCollection>? collections,
  String? get fcmToken;
  @override
  Map<String, bool>? get connections;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
