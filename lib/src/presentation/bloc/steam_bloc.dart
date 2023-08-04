import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'steam_event.dart';
part 'steam_state.dart';

class SteamBloc extends Bloc<SteamEvent, SteamState> {
  SteamBloc() : super(SteamInitial()) {
    on<SteamEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
