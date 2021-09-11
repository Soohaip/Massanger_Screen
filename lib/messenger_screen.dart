import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/ogw/ADea4I67Wv03zDtW3IM8ni9E7qHhxDvsoyw3ssTnOnJHJA=s83-c-mo'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Chats',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 20,
                )),
            onPressed: () {},
          ),
          Padding(padding: EdgeInsetsDirectional.only(start: 12.0)),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 110,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[200],
                              child: Icon(Icons.video_call,color: Colors.black,size: 30,),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Create \nRoom ',
                              maxLines: 2,
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildStoryItem(),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                          itemCount: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 15,
                  ),
                  itemCount: 15,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.white,
          label: Text(
            'New chat',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            Icons.edit,
            color: Colors.blue,
            size: 18,
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble,color: Colors.black,),
            title: Text('Chats',style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,),
            title: Text('People',style: TextStyle(fontSize: 17),),
          ),
        ],
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/ogw/ADea4I67Wv03zDtW3IM8ni9E7qHhxDvsoyw3ssTnOnJHJA=s83-c-mo'),
                ),
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2, right: 2),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'sohaip elgendy ',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/ogw/ADea4I67Wv03zDtW3IM8ni9E7qHhxDvsoyw3ssTnOnJHJA=s83-c-mo'),
              ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2, right: 2),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'sohaip elgendy',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hi, my name is sohaip hi, my name is sohaip hi, my name is sohaip hi, my name is sohaip hi, my name is sohaip',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '2:30 pm',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
