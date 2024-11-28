import 'package:final_fruit_app/core/services/get_it_services.dart';
import 'package:final_fruit_app/core/widgets/custom_app_bar.dart';
import 'package:final_fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:final_fruit_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signup_vie_body_bloc_consumer.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = "signup";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: BuildappBar(context, titile: "New Account"),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}


