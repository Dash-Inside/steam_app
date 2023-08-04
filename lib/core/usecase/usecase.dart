import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:steam/core/failure/failuter.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}

class NoParams extends Equatable {
  static const NoParams instance = NoParams._();

  const NoParams._();
  factory NoParams() => NoParams.instance;

  @override
  List<Object?> get props => [];
}
