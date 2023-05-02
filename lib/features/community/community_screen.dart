import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:reddit/core/constants/constants.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                Constants.bannerDefault,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
