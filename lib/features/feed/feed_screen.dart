import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit/core/constants/constants.dart';
import 'package:reddit/theme/pallete.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: [
        Container(
          padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ).copyWith(right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            GestureDetector(
                                      onTap: () => {},
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          Constants.avatarDefault,
                                        ),
                                        radius: 16,
                                      ),
                                    ),
                            Padding(padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'r/codingMemes',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ), 
                                ),
                                GestureDetector(
                                   onTap: () => {},
                                            child: Text(
                                              'u/kyrionnia',
                                              style: const TextStyle(fontSize: 12),
                                            ),
                                )
                              ],
                            ),
                            )

                          ],
                          ),
                            IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.delete,
                                      color:Pallete.redColor,
                                    ),
                                  ),
                        ],
                        
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 25,
                      child: Image.asset(Constants.googlePath,height: 23),
                    ),
                    Padding(padding:const EdgeInsets.only(top: 10.0),
                    child: Text(
                                "Coding Meme",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ), 
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                                width: double.infinity,
                                child: Image.asset(Constants.codeMeme),
                    ),
                     Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.up,
                                          size: 30,
                                          color:  Pallete.redColor,
                                        ),
                                      ),
                                      Text(
                                        "Vote:12",
                                        style: const TextStyle(fontSize: 17),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.down,
                                          size: 30,
                                          color: Pallete.blueColor,
                                        ),
                                      ),
                                      IconButton(
                                      onPressed: (){},
                                      icon: const Icon(
                                        Icons.comment,
                                      ),
                                    ),
                                    Text(
                                      'Comments : 12',
                                      style: const TextStyle(fontSize: 17),
                                    )
                                    ],
                                  ),
                                  
                  ],
                ),
                  ],
                  
                ),
                
        ),
        Container(
          padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ).copyWith(right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            GestureDetector(
                                      onTap: () => {},
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          Constants.avatarDefault,
                                        ),
                                        radius: 16,
                                      ),
                                    ),
                            Padding(padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'r/philosophymemes',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ), 
                                ),
                                GestureDetector(
                                   onTap: () => {},
                                            child: Text(
                                              'u/plato',
                                              style: const TextStyle(fontSize: 12),
                                            ),
                                )
                              ],
                            ),
                            )

                          ],
                          ),
                            IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.delete,
                                      color:Pallete.redColor,
                                    ),
                                  ),
                        ],
                        
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 25,
                      child: Image.asset(Constants.googlePath,height: 23),
                    ),
                    Padding(padding:const EdgeInsets.only(top: 10.0),
                    child: Text(
                                "Philosophy",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ), 
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                                width: double.infinity,
                                child: Image.asset(Constants.philosophy),
                    ),
                     Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.up,
                                          size: 30,
                                          color:  Pallete.redColor,
                                        ),
                                      ),
                                      Text(
                                        "Vote:12",
                                        style: const TextStyle(fontSize: 17),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.down,
                                          size: 30,
                                          color: Pallete.blueColor,
                                        ),
                                      ),
                                      IconButton(
                                      onPressed: (){},
                                      icon: const Icon(
                                        Icons.comment,
                                      ),
                                    ),
                                    Text(
                                      'Comments : 12',
                                      style: const TextStyle(fontSize: 17),
                                    )
                                    ],
                                  ),
                                  
                  ],
                ),
                  ],
                  
                ),
                
        ),
         Container(
          padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ).copyWith(right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            GestureDetector(
                                      onTap: () => {},
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          Constants.avatarDefault,
                                        ),
                                        radius: 16,
                                      ),
                                    ),
                            Padding(padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'r/memes',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ), 
                                ),
                                GestureDetector(
                                   onTap: () => {},
                                            child: Text(
                                              'u/kyrionnia',
                                              style: const TextStyle(fontSize: 12),
                                            ),
                                )
                              ],
                            ),
                            )

                          ],
                          ),
                            IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.delete,
                                      color:Pallete.redColor,
                                    ),
                                  ),
                        ],
                        
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 25,
                      child: Image.asset(Constants.googlePath,height: 23),
                    ),
                    Padding(padding:const EdgeInsets.only(top: 10.0),
                    child: Text(
                                "Coding Meme",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ), 
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                                width: double.infinity,
                                child: Image.asset(Constants.codeMeme),
                    ),
                     Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.up,
                                          size: 30,
                                          color:  Pallete.redColor,
                                        ),
                                      ),
                                      Text(
                                        "Vote:12",
                                        style: const TextStyle(fontSize: 17),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.down,
                                          size: 30,
                                          color: Pallete.blueColor,
                                        ),
                                      ),
                                      IconButton(
                                      onPressed: (){},
                                      icon: const Icon(
                                        Icons.comment,
                                      ),
                                    ),
                                    Text(
                                      'Comments : 12',
                                      style: const TextStyle(fontSize: 17),
                                    )
                                    ],
                                  ),
                                  
                  ],
                ),
                  ],
                  
                ),
                
        ),
         Container(
          padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ).copyWith(right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            GestureDetector(
                                      onTap: () => {},
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          Constants.avatarDefault,
                                        ),
                                        radius: 16,
                                      ),
                                    ),
                            Padding(padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'r/memes',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ), 
                                ),
                                GestureDetector(
                                   onTap: () => {},
                                            child: Text(
                                              'u/kyrionnia',
                                              style: const TextStyle(fontSize: 12),
                                            ),
                                )
                              ],
                            ),
                            )

                          ],
                          ),
                            IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      Icons.delete,
                                      color:Pallete.redColor,
                                    ),
                                  ),
                        ],
                        
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 25,
                      child: Image.asset(Constants.googlePath,height: 23),
                    ),
                    Padding(padding:const EdgeInsets.only(top: 10.0),
                    child: Text(
                                "Meme",
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ), 
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                                width: double.infinity,
                                child: Image.asset(Constants.loginEmotePath),
                    ),
                     Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.up,
                                          size: 30,
                                          color:  Pallete.redColor,
                                        ),
                                      ),
                                      Text(
                                        "Vote:12",
                                        style: const TextStyle(fontSize: 17),
                                      ),
                                      IconButton(
                                        onPressed: (){},
                                        icon: Icon(
                                          Constants.down,
                                          size: 30,
                                          color: Pallete.blueColor,
                                        ),
                                      ),
                                      IconButton(
                                      onPressed: (){},
                                      icon: const Icon(
                                        Icons.comment,
                                      ),
                                    ),
                                    Text(
                                      'Comments : 12',
                                      style: const TextStyle(fontSize: 17),
                                    )
                                    ],
                                  ),
                                  
                  ],
                ),
                  ],
                  
                ),
                
        ),
        //  Container(
        //   padding: const EdgeInsets.symmetric(
        //                   vertical: 4,
        //                   horizontal: 16,
        //                 ).copyWith(right: 0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Row(children: [
        //                     GestureDetector(
        //                               onTap: () => {},
        //                               child: CircleAvatar(
        //                                 backgroundImage: NetworkImage(
        //                                   Constants.avatarDefault,
        //                                 ),
        //                                 radius: 16,
        //                               ),
        //                             ),
        //                     Padding(padding: const EdgeInsets.only(left: 8),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text(
        //                           'r/memes',
        //                                     style: const TextStyle(
        //                                       fontSize: 16,
        //                                       fontWeight: FontWeight.bold,
        //                                     ), 
        //                         ),
        //                         GestureDetector(
        //                            onTap: () => {},
        //                                     child: Text(
        //                                       'u/kyrionnia',
        //                                       style: const TextStyle(fontSize: 12),
        //                                     ),
        //                         )
        //                       ],
        //                     ),
        //                     )

        //                   ],
        //                   ),
        //                     IconButton(
        //                             onPressed: () => {},
        //                             icon: Icon(
        //                               Icons.delete,
        //                               color:Pallete.redColor,
        //                             ),
        //                           ),
        //                 ],
                        
        //             ),
        //             const SizedBox(height: 5),
        //             SizedBox(
        //               height: 25,
        //               child: Image.asset(Constants.googlePath,height: 23),
        //             ),
        //             Padding(padding:const EdgeInsets.only(top: 10.0),
        //             child: Text(
        //                         "Meme",
        //                         style: const TextStyle(
        //                           fontSize: 19,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ), 
        //             ),
        //             SizedBox(
        //               height: MediaQuery.of(context).size.height * 0.35,
        //                         width: double.infinity,
        //                         child: Image.asset(Constants.loginEmotePath),
        //             )
        //           ],
        //         ),
        // )
      ],)
    );
  }
}