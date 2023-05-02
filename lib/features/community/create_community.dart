import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../home/screens/home_screen.dart';

class CreateCommunity extends StatelessWidget {
  const CreateCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a community'),
        centerTitle: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            );
          }
        ),
        // actions: [
        //   IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        //   IconButton(onPressed: (){}, 
        //   icon: CircleAvatar(backgroundImage: Image.asset('assets/images/loginEmote.png').image,))

        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Community name'),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      // controller: communityNameController,
                      decoration: const InputDecoration(
                        hintText: 'r/Community_name',
                        filled: true,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(18),
                      ),
                      maxLength: 21,
                    ),
                     const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      child: const Text(
                        'Create community',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
      
        ]),
      ),
    );
  }
}

