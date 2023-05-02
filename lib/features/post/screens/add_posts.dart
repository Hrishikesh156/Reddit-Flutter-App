import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPosts extends ConsumerWidget {
  const AddPosts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){},
            child: SizedBox(
              height: 120,
              width: 120,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
                  elevation: 16,
                  child: Center(
                      child: Icon(
                        Icons.image_outlined,
                        size: 60,
                      ),
                    ),
                 
              ),
              
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: SizedBox(
              height: 120,
              width: 120,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
                  elevation: 16,
                  child: Center(
                      child: Icon(
                        Icons.font_download_outlined,
                        size: 60,
                      ),
                    ),
                 
              ),
              
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: SizedBox(
              height: 120,
              width: 120,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
                  elevation: 16,
                  child: Center(
                      child: Icon(
                        Icons.link_outlined,
                        size: 60,
                      ),
                    ),
                 
              ),
              
            ),
          )
        ],
      ),
    );
  }
}