import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widget/button/default.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/core/configs/theme/assets/app_images.dart';
import 'package:spotify/core/configs/theme/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/register.dart';

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.loginRegisterBg)),
          Container(color: Colors.black12),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 69, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 111),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const SizedBox(height: 55),
                const Text(
                  "Enjoy listening to Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 21),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DefaultButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        ),
                        title: "Register",
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Scaffold(),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 20,
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
