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
  late TextEditingController controllerName;
  bool isFormValid = false;

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
    controllerName = TextEditingController();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    controllerName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return Form(
      onChanged: updateFormValidity,
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InputField(
            controller: controllerName,
            userPrompt: 'Enter your name',
            onType: (value) {
              bloc.add(
                AuthEvent.onNameChanged(name: controllerName.text.trim()),
              );
            },
          ),
          const SizedBox(height: 24),
          InputField(
            icon: Icon(Icons.email),
            controller: controllerEmail,
            userPrompt: 'Enter your email',
            onType: (value) {
              context.read<AuthBloc>().add(
                AuthEvent.onEmailChanged(email: controllerEmail.text),
              );
            },
          ),
          const SizedBox(height: 24),
          InputField(
            icon: Icon(Icons.password),
            controller: controllerPassword,
            userPrompt: 'Enter your password',
            onType: (value) {
              context.read<AuthBloc>().add(
                AuthEvent.onPasswordChanged(password: controllerPassword.text),
              );
            },
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            onTap:
                isFormValid
                    ? () {
                      bloc.add(const AuthEvent.signUp());
                    }
                    : null,
            buttonText: 'Create Account',
          ),
          PrimaryButton(
            buttonText: 'Cancel',
            buttonTextStyle: TextStyle(
              color: Color(0xFF4A5567),
              fontWeight: FontWeight.w900,
            ),
            buttonColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
