import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit/features/community/community_screen.dart';

import '../../community/create_community.dart';



class CommunityDrawer extends StatelessWidget {
  const CommunityDrawer({super.key});


  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          ListTile(
            title: Text('Create a community'),
            leading: Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateCommunity()));
            },
          ),
          ListTile(
            title: Text('r/python'),
            leading: CircleAvatar(backgroundImage: Image.asset('assets/images/loginEmote.png').image),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()));
            },
          ),
           ListTile(
            title: Text('r/memes'),
            leading: CircleAvatar(backgroundImage: Image.asset('assets/images/loginEmote.png').image),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()));
            },
          ),
           ListTile(
            title: Text('r/space'),
            leading: CircleAvatar(backgroundImage: Image.asset('assets/images/loginEmote.png').image),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()));
            },
          ),
         
         
        ],
      ),
    )
    );
  }
}
