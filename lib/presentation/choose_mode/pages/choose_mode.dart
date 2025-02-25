import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widget/button/default.dart';
import 'package:spotify/core/configs/theme/assets/app_images.dart';
import 'package:spotify/core/configs/theme/assets/app_vectors.dart';

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
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 73 / 2,
                              backgroundColor: Colors.white10,
                              child: SvgPicture.asset(AppVectors.moon),
                            ),
                            const SizedBox(height: 10),
                            const Text("Dark Mode"),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 73 / 2,
                              backgroundColor: Colors.white10,
                              child: SvgPicture.asset(AppVectors.sun),
                            ),
                            const SizedBox(height: 10),
                            const Text("Light Mode"),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                DefaultButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Scaffold(),
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
