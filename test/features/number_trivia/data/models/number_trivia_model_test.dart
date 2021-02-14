import 'package:flutter_test/flutter_test.dart';
import 'package:number/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number/features/number_trivia/domain/entities/number_trivia.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test text');

  test('should be  a subclass of NumberTrivia entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}
