import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit/core/constants/constants.dart';
import 'package:reddit/features/home/drawers/community_drawer.dart';
import 'package:reddit/features/home/drawers/profile_drawer.dart';



class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState  extends ConsumerState<HomeScreen>{
int _page = 0;
 void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void displayEndDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: ()=> displayDrawer(context),
            );
          }
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: ()=> {}, 
          icon: CircleAvatar(backgroundImage: Image.asset('assets/images/loginEmote.png').image,))

        ],
      ),
      body: Constants.tabWidgets[_page],
      drawer: CommunityDrawer(),
      endDrawer: ProfileDrawer(),
      
      bottomNavigationBar:
       CupertinoTabBar(items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: '',
          
          
        )
  
      ],
      onTap: onPageChanged,
      currentIndex: _page,
    ));
  }
}
