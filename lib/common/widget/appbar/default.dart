import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/theme/assets/app_vectors.dart';

class DefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actionsPadding: EdgeInsets.symmetric(),
      title: SvgPicture.asset(
        AppVectors.logo,
        height: 33,
        width: 108,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
