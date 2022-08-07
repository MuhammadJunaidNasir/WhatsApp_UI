import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('WhatsApp'),
            bottom: const TabBar(
                tabs:  [
                  Tab(
                    child: Icon(Icons.camera_alt_rounded),
                  ),
                  Tab(
                       child: Text('Chats'),
                     ),
                  Tab(
                      child: Text('Status'),
                  ),
                  Tab(
                      child: Text('Calls'),
                  ),

                ]

            ),
            actions:  [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_rounded),
                  itemBuilder: (context,)=>[
                    const PopupMenuItem(
                         value: 1,
                        child: Text('New group'),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('New broadcast'),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text('Liked devices'),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text('Starred messages'),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text('Setting'),
                    ),
                  ]

              ),
              const SizedBox(
                width: 10,
              ),


            ],
          ),
          body:  TabBarView(
            children:  [
                 const CircleAvatar(
                   radius: 5,
                   backgroundImage: AssetImage('assets/junaid.jpg'),
                 ),
                 ListView.builder(
                     itemCount: 100,
                     itemBuilder: (context,index){
                       return ListTile(
                         leading: CircleAvatar(
                           radius: 30,
                           backgroundImage: AssetImage(index%2==0?'assets/junaid.jpg':'assets/profile.jpg'),
                         ),
                         title: Text(index%2==0?'Junaid':'Angela'),
                         subtitle: Text(index%2==0?'How are you?':'Where are you?'),
                         trailing: Text('9:51 PM'),
                       );
                     },
                 ),
                 ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                  return  ListTile(


                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(index==0?'assets/junaid.jpg':'assets/profile.jpg'),
                    ),
                  title: Text(index==0?'My Status':'Angela'),
                  subtitle: Text(index==0?'Yesterday, 9:33 PM':'Today, 10:51 PM'),
                  trailing: Icon(index==0?Icons.visibility:Icons.download_for_offline),



                  );

                },

              ),
                 ListView.builder(
                       itemCount: 100,
                       itemBuilder: (context,index){
                         return  ListTile(
                           leading: CircleAvatar(
                             radius: 30,
                             backgroundImage: AssetImage(index%2==0?'assets/junaid.jpg':'assets/profile.jpg'),
                           ),
                           title: Text(index%2==0?'Junaid':'Angela'),
                           subtitle: Text(index%2==0?'Missed video call':'Missed audio call'),
                           trailing: Icon(index%2==0?Icons.video_call:Icons.call),

                         );

                       },

                     ),

            ],
          ),
        ),

    );
  }
}
