import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widget/button/default.dart';
import 'package:spotify/core/configs/theme/assets/app_images.dart';
import 'package:spotify/core/configs/theme/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/login_signup.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseModeBg),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(color: Colors.black12),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 69, horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  "Choose Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 21),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            verticalDirection: VerticalDirection.up,
                            spacing: -11,
                            children: [
                              BlocBuilder<ThemeCubit, ThemeMode>(
                                buildWhen: (previous, current) =>
                                    previous != current,
                                builder: (context, themeMode) {
                                  if (themeMode == ThemeMode.dark) {
                                    return SvgPicture.asset(
                                      AppVectors.themeIndicator,
                                    );
                                  } else {
                                    return SizedBox(height: 16.5);
                                  }
                                },
                              ),
                              GestureDetector(
                                onTap: () => context
                                    .read<ThemeCubit>()
                                    .updateTheme(ThemeMode.dark),
                                child: ClipOval(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 87, sigmaY: 87),
                                    child: CircleAvatar(
                                      radius: 73 / 2,
                                      backgroundColor: Colors.white10,
                                      child: SvgPicture.asset(AppVectors.moon),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 11.5),
                          const Text(
                            "Dark Mode",
                            style: TextStyle(
                              color: Color(0xFFDADADA),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            verticalDirection: VerticalDirection.up,
                            spacing: -11,
                            children: [
                              BlocBuilder<ThemeCubit, ThemeMode>(
                                buildWhen: (previous, current) =>
                                    previous != current,
                                builder: (context, themeMode) {
                                  if (themeMode == ThemeMode.light) {
                                    return SvgPicture.asset(
                                      AppVectors.themeIndicator,
                                    );
                                  } else {
                                    return SizedBox(height: 16.5);
                                  }
                                },
                              ),
                              GestureDetector(
                                onTap: () => context
                                    .read<ThemeCubit>()
                                    .updateTheme(ThemeMode.light),
                                child: ClipOval(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 87,
                                      sigmaY: 87,
                                    ),
                                    child: CircleAvatar(
                                      radius: 73 / 2,
                                      backgroundColor: Colors.white10,
                                      child: SvgPicture.asset(AppVectors.sun),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 11.5),
                          const Text(
                            "Light Mode",
                            style: TextStyle(
                              color: Color(0xFFDADADA),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 68,
                ),
                DefaultButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginSignupPage(),
                    ),
                  ),
                  title: "Continue",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
