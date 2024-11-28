import 'package:final_fruit_app/constants.dart';
import 'package:final_fruit_app/core/widgets/customTextFormField.dart';
import 'package:final_fruit_app/core/widgets/custom_button.dart';
import 'package:final_fruit_app/core/widgets/password_field.dart';
import 'package:final_fruit_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:final_fruit_app/features/auth/presentation/views/singup_view.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:final_fruit_app/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey <FormState> formKey=GlobalKey();
  late String email, userName,password;
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24,),
              CustomTextFormField(
                onSaved: (value){
                  userName=value!;
                },
                  hintText: "Name", textInputType: TextInputType.name),
                  const SizedBox(height: 16,),
              CustomTextFormField(
                  hintText: "Email",
                    onSaved: (value){
                  email=value!;
                },
                  textInputType: TextInputType.emailAddress),
                  const SizedBox(height: 16,),
            PasswordField(
            onSaved: (value){
              password=value!;
            },
          ),
              const SizedBox(height: 16,),
              // const TermsAndConditionWidget(),
              const SizedBox(height: 30,),
              CustomButton(
                onPressed: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    context.read<SignupCubit>().createUserWithEmailAndPassword
                    (email, password, userName);
                  }else{
                    setState(() {
                      autovalidateMode= AutovalidateMode.always;
                    });
                  }
                },
                 text: "Create new account"),
              SizedBox(height: 26,),
              const HaveAnAcountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
