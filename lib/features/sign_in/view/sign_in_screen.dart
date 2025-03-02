import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tile_flow/config/constants/app_images.dart';
import 'package:tile_flow/config/constants/dimensions.dart';
import 'package:tile_flow/config/l10n/app_localizations.dart';
import 'package:tile_flow/core/di/service_locator.dart';
import 'package:tile_flow/generla_app/auth/auth_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var _isValid = false;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(locale.signInScreenTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingM),
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Align(
                          child: SvgPicture.asset(
                            AppImages.logo,
                            width: _isVertical(width, height) ? width : height,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          child: Form(
                            key: _formKey,
                            onChanged: () {
                              setState(() {
                                _isValid = _formKey.currentState!.validate();
                              });
                            },
                            autovalidateMode: AutovalidateMode.onUnfocus,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    labelText: locale.loginTitle,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    labelText: locale.passwordTitle,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return '';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: _isVertical(width, height)
                              ? Alignment.bottomCenter
                              : Alignment.center,
                          child: BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) => SizedBox(
                              width: 90,
                              child: ElevatedButton(
                                onPressed: _isValid
                                    ? () => sl<AuthBloc>().add(
                                          const AuthEvent.loggingIn(),
                                        )
                                    : null,
                                child: state.maybeWhen(
                                  authorization: () => Transform.scale(
                                    scale: 0.7,
                                    child: const CircularProgressIndicator(),
                                  ),
                                  orElse: () => Text(locale.continueBtn),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isVertical(double width, double height) => width < height;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
