import 'package:flutter/material.dart';
import 'package:school_sports/views/widgets/custom_shadow_text.dart';
import 'package:school_sports/views/widgets/custom_text.dart';

class LesSharkLantidesScreen extends StatelessWidget {
  const LesSharkLantidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black12,

      body: Column(
        children: [
          CustomText(text: "sagor ahammed", fontName: "Puritan",),
          CustomText(text: "sagor ahammed",),
          CustomShadowText(text: "sagor ahammed",)
        ],
      ),
    );
  }
}
