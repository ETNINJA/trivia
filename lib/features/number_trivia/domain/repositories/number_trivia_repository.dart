import 'package:dartz/dartz.dart';

import 'package:number/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number/core/error/failures.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
