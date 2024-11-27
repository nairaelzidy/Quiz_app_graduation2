import 'package:final_fruit_app/core/helper_function/build_error_bar.dart';
import 'package:final_fruit_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      builder: (context, state) => ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: const SignupViewBody()),
      listener: (context, state) {
        if (state is SignpSuccess) {}
        if (state is SignupFailure) {
          buildErrorBar(context, state.message);
        }
      },
    );
  }

 
}
