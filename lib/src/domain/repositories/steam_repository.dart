import 'package:dartz/dartz.dart';
import 'package:steam/core/failure/failuter.dart';
import 'package:steam/src/domain/entities/steam_profile.dart';

abstract class SteamRepository {
  /// getSteamProfile returns Either [Failure] if there is some errors or [SteamProfile] if there is no error
  /// getSteamProfile takes [id] that used for search uniq [SteamProfile]
  Future<Either<Failure, SteamProfile>> getSteamProfile({required String id});
}
