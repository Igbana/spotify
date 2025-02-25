import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widget/button/default.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/core/configs/theme/assets/app_images.dart';
import 'package:spotify/core/configs/theme/assets/app_vectors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 69, horizontal: 23),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBg),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
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
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultButton(onPressed: () {}, title: "Get Started")
              ],
            ),
          ),
          Container(color: Colors.black12)
        ],
      ),
    );
  }
}
