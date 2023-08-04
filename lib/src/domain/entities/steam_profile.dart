import 'package:equatable/equatable.dart';

class SteamProfile extends Equatable {
  final String id;
  final String userName;
  final String avatar;

  const SteamProfile({
    required this.id,
    required this.userName,
    required this.avatar,
  });

  @override
  List<Object?> get props => [id];
}
