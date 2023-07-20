import 'package:flutter/material.dart';

import '/core/global/app_assets.dart';
import '/core/global/app_text_styles.dart';
import '/core/utils/size_config.dart';
import 'or_divider.dart';
import 'social_auth_icon.dart';

class TallWhiteBackground extends StatelessWidget {
  const TallWhiteBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: SizeConfig.screenHeight! * 0.3,
      child: Container(
        height: SizeConfig.screenHeight! * 0.7,
        width: SizeConfig.screenWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60.0),
            topLeft: Radius.circular(60.0),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: SizeConfig.screenHeight! * 0.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const OrDivider(),
                  SizedBox(width: SizeConfig.screenWidth! * 0.02),
                  const Text("OR", style: AppTextStyles.OrStyle),
                  SizedBox(width: SizeConfig.screenWidth! * 0.02),
                  const OrDivider(),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialAuthIcon(image: AppAssets.facebookIcon),
                  SocialAuthIcon(image: AppAssets.ios),
                  SocialAuthIcon(image: AppAssets.googleIcon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}