// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:steam/core/failure/failuter.dart';
import 'package:steam/src/domain/entities/steam_profile.dart';
import 'package:steam/src/domain/failure/incorrect_id_failure.dart';
import 'package:steam/src/domain/repositories/steam_repository.dart';
import '../datasources/steam_datasource.dart';

class SteamRepositoryImpl implements SteamRepository {
  final SteamDatasource steamDatasource;

  SteamRepositoryImpl({
    required this.steamDatasource,
  });

  @override
  Future<Either<Failure, SteamProfile>> getSteamProfile({required String id}) async {
    try {
      return Right(await steamDatasource.getModelByID(id));
    } catch (_) {
      return const Left(IncorrectIdFailure());
    }
  }
}
