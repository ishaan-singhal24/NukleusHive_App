import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? name,
    String? number,
    String? email,
    String? username,
    // UserLocation? location,
    // @TimestampConverter() DateTime? dateOfBirth,
    String? profilePictureUrl,
    String? profileWallpaperUrl,
    String? about,
    bool? hasSubscription,
    List<String>? skills,
    Map<String, bool>? experience,
    // List<Experience>? experiences,
    Map<String, bool>? education,
    // List<Education>? educations,
    String? appInvitedCode,
    // UserInviteModel? invitedBy,
    // List<UserInviteModel>? invitedTo,
    bool? inTheWaitlist,
    String? inviteCode,
    int? maxAllowedInvites,
    // List<UserCollection>? collections,
    String? fcmToken,
    Map<String, bool>? connections,
    // @TimestampConverter() DateTime? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
