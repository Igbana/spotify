import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
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
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 21),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 37,)
                
              ],
            ),
          ),
          Container(color: Colors.black12)
        ],
      ),
    );
  }
}
