import 'package:test_endpoint/src/presentation/home/domain/use%20cases/base_usecase.dart';

class AskAIUseCase
    implements UseCase<Exception, void, AskAIUseCaseParams> {
  const AskAIUseCase(Params._apiRepository);

  final apiRepository _apiRepository;

  @override
  Future<Either<Exception, void>> call(AskAIUseCaseParams params) =>
      _apiRepository.get(params.text);
}

class AskAIUseCaseParams implements Params {
const AskAIUseCase(this.text)
final String text;
}
