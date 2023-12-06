/*
import 'package:either_dart/either.dart';
import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../repositories/user_repository.dart';
import '../base_usecase.dart';

class LoginWithOauthUseCase
    implements UseCase<Exception, void, LoginWithOauthUseCaseParams> {
  const LoginWithOauthUseCase(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<Either<Exception, void>> call(LoginWithOauthUseCaseParams params) =>
      _userRepository.loginWithOauth(params.context, params.provider);
}

class LoginWithOauthUseCaseParams implements Params {
  final BuildContext context;
  final Provider provider;

  const LoginWithOauthUseCaseParams({
    required this.context,
    required this.provider,
  });
}
