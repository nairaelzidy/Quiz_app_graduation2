import 'package:final_fruit_app/core/services/get_it_services.dart';
import 'package:final_fruit_app/core/utils/app_text_style.dart';
import 'package:final_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:final_fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:final_fruit_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const String routeName = "Login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: BuildappBar(titile: "Sign In", context),
        body: const Signinviewbodyblocconsumer(),
      ),
    );
  }
}

