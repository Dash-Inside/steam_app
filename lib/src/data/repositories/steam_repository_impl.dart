// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:steam/core/failure/failuter.dart';
import 'package:steam/src/data/datasources/steam_datasource.dart';
import 'package:steam/src/domain/entities/steam_profile.dart';
import 'package:steam/src/domain/repositories/steam_repository.dart';

class SteamRepositoryImpl implements SteamRepository {
  final SteamDatasource steamDatasource;

  SteamRepositoryImpl({
    required this.steamDatasource,
  });

  @override
  Future<Either<Failure, SteamProfile>> getSteamProfile({required String id}) {
    // TODO: implement getSteamProfile
    throw UnimplementedError();
  }
}
