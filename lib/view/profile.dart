import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Icon(Icons.menu,color: Colors.black,)],
        leading: Icon(Icons.arrow_back,size: 25,color: Colors.black,),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("asset/images/images.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("asset/images/download.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/images/download.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/images/download1.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/images/download2.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hey Flutter",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "@faHIM",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Classic It & Sky Mart Provide\n Mobile App Developer",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
              child: Container(
                height: 50,width: double.infinity,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.black12),
                child: ListTile(leading: Icon(Icons.privacy_tip),trailing: Icon(Icons.arrow_forward_ios_rounded),title: Text('privacy'),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
              child: Container(
                height: 50,width: double.infinity,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.black12),
                child: ListTile(leading: Icon(Icons.timelapse_sharp),trailing: Icon(Icons.arrow_forward_ios_rounded),title: Text('Purchash'),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
              child: Container(
                height: 50,width: double.infinity,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.black12),
                child: ListTile(leading: Icon(Icons.help_outline),trailing: Icon(Icons.arrow_forward_ios_rounded),title: Text('Help & Support'),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
              child: Container(
                height: 50,width: double.infinity,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.black12),
                child: ListTile(leading: Icon(Icons.settings),trailing: Icon(Icons.arrow_forward_ios_rounded),title: Text('Setting'),) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
