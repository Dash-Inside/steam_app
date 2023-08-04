part of 'steam_bloc.dart';

abstract class SteamState extends Equatable {
  const SteamState();
  
  @override
  List<Object> get props => [];
}

class SteamInitial extends SteamState {}
