import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:number/core/error/failures.dart';
import 'package:number/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:number/features/number_trivia/domain/entities/number_trivia.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(
    this.repository,
  );

  Future<Either<Failure, NumberTrivia>> execute({
    @required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
