import 'package:flutter/material.dart';

class Seprated extends StatelessWidget {
  List <String> images = [
    'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
    'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
    'https://thumbs.dreamstime.com/b/profile-beautiful-smiling-girl-6243612.jpg',
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80'
  ];
 //create list of images
  //call images in circle avatar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400, //scaffold color
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("list view seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            // return Text('Text $index');
            // int repeatedIndex = index % 4;  //to make repeated tile  index 0 to 3
           return ListTile(
              title: Text('Person $index'),
              subtitle: Text('hello'),
              leading: CircleAvatar(
                // backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(images[index % images.length])
              ),
              trailing: Text('Time :$index '),
            );
          },
          separatorBuilder: (context,index){
            //return Text("listview seperated");
            return Divider(thickness: 3,);
          },
          itemCount: 50
      )

    );
  }
}
