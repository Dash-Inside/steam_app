import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:steam/src/domain/entities/steam_profile.dart';
import 'package:steam/src/domain/repositories/steam_repository.dart';
import 'package:steam/src/domain/usecases/get_steam_profile_usecase_by_id.dart';

@GenerateNiceMocks([MockSpec<SteamRepository>()])
import 'get_steam_profile_usecase_test.mocks.dart';

const String id = '76561199082387856';
const String userName = 'Dead1nside';
const String avatar = 'https://avatars.steamstatic.com/fb18b7dc8403a2f63a8a352f2c3ccb63a9ec76f9_full.jpg';

const SteamProfile steamProfile = SteamProfile(userName: userName, avatar: avatar, id: id);

void main() {
  test(
    'get_steam_profile_usecase_test',
    () async {
      // Act
      final SteamRepository steamRepository = MockSteamRepository();
      when(steamRepository.getSteamProfile(id: id)).thenAnswer(
        (_) async {
          return const Right(steamProfile);
        },
      );

      // Arrange
      final getProfile = GetSteamProfileUseCase(steamRepository: steamRepository);
      final res = await getProfile.call(id);

      // Assett
      verify(steamRepository.getSteamProfile(id: id)).called(1);
      expect(res, const Right(steamProfile));
    },
  );
}
