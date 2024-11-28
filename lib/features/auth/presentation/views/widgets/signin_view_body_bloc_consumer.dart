import 'package:final_fruit_app/core/helper_function/build_error_bar.dart';
import 'package:final_fruit_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:final_fruit_app/features/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Signinviewbodyblocconsumer extends StatelessWidget {
  const Signinviewbodyblocconsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
        }
        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SigninLoading ? true 
            : false, child: SigninViewBody()); 
      },
    );
  }
}
