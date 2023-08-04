// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:steam/core/failure/failuter.dart';
import 'package:steam/core/usecase/usecase.dart';
import 'package:steam/src/domain/entities/steam_profile.dart';
import 'package:steam/src/domain/repositories/steam_repository.dart';

class GetSteamProfileUseCase extends UseCase<SteamProfile, String> {
  final SteamRepository steamRepository;
  GetSteamProfileUseCase({
    required this.steamRepository,
  });

  @override
  Future<Either<Failure, SteamProfile>> call(String params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
