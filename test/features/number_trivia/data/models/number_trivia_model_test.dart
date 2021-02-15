import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:number/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reade.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(
    number: 4,
    text: '4 Test test',
  );

  test(
    'should be  a subclass of NumberTrivia entity',
    () async {
      expect(tNumberTriviaModel, isA<NumberTrivia>());
    },
  );

  group('fromJson', () {
    test(
      'should return a valid model when the json is integer',
      () async {
        //arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia.json'));
        //act
        final result = NumberTriviaModel.fromJson(jsonMap);
        //assert
        expect(result, tNumberTriviaModel);
      },
    );

    test(
      'should return a valid model when the json is double',
      () async {
        //arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('trivia_double.json'));
        //act
        final result = NumberTriviaModel.fromJson(jsonMap);
        //assert
        expect(result, tNumberTriviaModel);
      },
    );
  });

  group(
    'toJson',
    () {
      test(
        'should return a JSON map containing the proper data',
        () async {
          final result = tNumberTriviaModel.toJson();
          final expetedMap = {
            "text": "4 Test test",
            "number": 4,
          };
          expect(result, expetedMap);
        },
      );
    },
  );
}
