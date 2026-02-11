part of '../signup_page.dart';

class _SignupForm extends StatefulWidget {
  const _SignupForm();

  @override
  State<_SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<_SignupForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;
  Timer? debounce;
  bool isFormValid = false;

  void onTextChanged(void Function() event) {
    if (debounce?.isActive ?? false) debounce!.cancel();

    debounce = Timer(const Duration(milliseconds: 500), () {
      event();
    });
  }

  void updateFormValidity() {
    setState(() {
      isFormValid = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  void initState() {
    super.initState();
    controllerEmail = TextEditingController();
    controllerPassword = TextEditingController();
  }

  @override
  void dispose() {
    debounce?.cancel();
    controllerEmail.dispose();
    controllerPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: updateFormValidity,
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            onTap: null,
            minLines: 1,
            maxLines: null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your info';
              }
              return null;
            },
            controller: controllerEmail,
            cursorColor: Color(0xFF4A5567),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.email),
              suffixIconColor: Color(0xFF4A5567),

              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter your email',
              hintStyle: TextStyle(color: Color(0xFF4A5567)),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Color(0xFF4A5567)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Color(0xFF4A5567)),
              ),
            ),
            onChanged: null,
          ),
          const SizedBox(height: 24),
          TextFormField(
            onTap: null,
            minLines: 1,
            maxLines: null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your info';
              }
              return null;
            },
            controller: controllerPassword,
            cursorColor: Color(0xFF4A5567),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.password),
              suffixIconColor: Color(0xFF4A5567),

              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter you password',
              hintStyle: TextStyle(color: Color(0xFF4A5567)),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Color(0xFF4A5567)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Color(0xFF4A5567)),
              ),
            ),
            onChanged: null,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  //foregroundColor: TfaColor.white,
                ),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Color(0xFF4A5567),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocConsumer<AuthBloc, AuthState>(
  //     listener: (context, state) {
  //       if (state.success) {
  //         context.router.replaceAll([const HomeRoute()]);
  //       } else if (state.failure != null) {
  //         showDialog(
  //           context: context,
  //           builder:
  //               (_) => AlertDialog(
  //                 backgroundColor: TfaColor.midGrey,
  //                 title: const Text('Failed Login'),
  //                 actions: [
  //                   TextButton(
  //                     onPressed: () => context.router.maybePop(),
  //                     child: Text(
  //                       'Try Again',
  //                       style: GoogleFonts.manrope(
  //                         fontSize: 16,
  //                         color: TfaColor.black,
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //         );
  //       }
  //     },
  //     builder: (context, state) {
  //       return Form(
  //         onChanged: updateFormValidity,
  //         key: _formKey,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             BasicTextfield(
  //               onFieldChange: (text) {
  //                 onTextChanged(() {
  //                   context.read<AuthBloc>().add(
  //                     AuthEvent.onEmailChanged(email: controllerEmail.text),
  //                   );
  //                 });
  //               },
  //               helperText: 'Enter your email address',
  //               textController: controllerEmail,
  //               textfieldIcon: const Icon(Icons.email_outlined),
  //             ),
  //             TfaHeight.h24,
  //             BasicTextfield(
  //               helperText: 'Enter a password',
  //               onFieldChange: (text) {
  //                 onTextChanged(() {
  //                   context.read<AuthBloc>().add(
  //                     AuthEvent.onPasswordChanged(
  //                       password: controllerPassword.text,
  //                     ),
  //                   );
  //                 });
  //               },
  //               textController: controllerPassword,
  //               textfieldIcon: const Icon(Icons.remove_red_eye_outlined),
  //             ),
  //             TfaHeight.h12,
  //             Align(
  //               alignment: Alignment.bottomLeft,
  //               child: TextButton(
  //                 onPressed:
  //                     () => context.router.push(const ResetPasswordRoute()),
  //                 child: Text(
  //                   'Forgot Password?',
  //                   textAlign: TextAlign.left,
  //                   style: TfaTextStyle.lexCta,
  //                 ),
  //               ),
  //             ),
  //             TfaHeight.h32,
  //             CtaButton(
  //               onTap:
  //                   isFormValid
  //                       ? () {
  //                         context.read<AuthBloc>().add(const AuthEvent.login());
  //                       }
  //                       : null,
  //               buttonName: "Login",
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
