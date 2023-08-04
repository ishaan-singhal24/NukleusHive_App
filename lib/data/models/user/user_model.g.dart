// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      number: json['number'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      profileWallpaperUrl: json['profileWallpaperUrl'] as String?,
      about: json['about'] as String?,
      hasSubscription: json['hasSubscription'] as bool?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      experience: (json['experience'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      education: (json['education'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      appInvitedCode: json['appInvitedCode'] as String?,
      inTheWaitlist: json['inTheWaitlist'] as bool?,
      inviteCode: json['inviteCode'] as String?,
      maxAllowedInvites: json['maxAllowedInvites'] as int?,
      fcmToken: json['fcmToken'] as String?,
      connections: (json['connections'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'email': instance.email,
      'username': instance.username,
      'profilePictureUrl': instance.profilePictureUrl,
      'profileWallpaperUrl': instance.profileWallpaperUrl,
      'about': instance.about,
      'hasSubscription': instance.hasSubscription,
      'skills': instance.skills,
      'experience': instance.experience,
      'education': instance.education,
      'appInvitedCode': instance.appInvitedCode,
      'inTheWaitlist': instance.inTheWaitlist,
      'inviteCode': instance.inviteCode,
      'maxAllowedInvites': instance.maxAllowedInvites,
      'fcmToken': instance.fcmToken,
      'connections': instance.connections,
    };
