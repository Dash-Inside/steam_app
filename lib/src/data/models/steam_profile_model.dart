import 'package:steam/src/domain/entities/steam_profile.dart';

class ProfileModel extends SteamProfile {
  const ProfileModel({
    required super.id,
    required super.userName,
    required super.avatar,
  });
}
