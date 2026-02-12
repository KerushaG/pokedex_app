part of '../login_page.dart';

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;
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
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) => current.failure != previous.failure,
      listener: (context, state) {
        if (state.failure != null) {
          showDialog(
            context: context,
            builder:
                (_) => AlertDialog(
                  title: const Text('Failed Login'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Try Again'),
                    ),
                  ],
                ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          onChanged: updateFormValidity,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                    AuthEvent.onPasswordChanged(
                      password: controllerPassword.text,
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                onTap:
                    isFormValid
                        ? () {
                          final bloc = context.read<AuthBloc>();
                          bloc.add(
                            AuthEvent.onEmailChanged(
                              email: controllerEmail.text.trim(),
                            ),
                          );
                          bloc.add(
                            AuthEvent.onPasswordChanged(
                              password: controllerPassword.text,
                            ),
                          );
                          bloc.add(const AuthEvent.login());
                        }
                        : null,
                buttonText: 'Login',
              ),
            ],
          ),
        );
      },
    );
  }
}
