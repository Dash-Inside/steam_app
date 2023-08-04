// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:steam/src/data/datasources/steam_datasource.dart';
import 'package:steam/src/domain/repositories/steam_repository.dart';

class SteamRepositoryImpl implements SteamRepository {
  final SteamDatasource steamDatasource;

  SteamRepositoryImpl({
    required this.steamDatasource,
  });
}
