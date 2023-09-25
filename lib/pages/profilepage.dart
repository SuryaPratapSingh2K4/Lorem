import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 70.0,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Lorem",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'R.font.poppins',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFE29D34),
                  )),
              Icon(Icons.notification_add_rounded)
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            height: 200,
            width: 200,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/Profilephoto.png'),
              radius: 100,
              // child: Image.asset('images/Profilephoto.png')
            ),
          ),
          SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
