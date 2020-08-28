import 'package:flutter/material.dart';

class User extends StatelessWidget {

  final int userId;
  final String userName;
  final int userExperience;
  final String userAvatar;
  final int userMessages;

  User(this.userId, this.userName, this.userExperience, this.userAvatar, this.userMessages);

  @override
  Widget build(BuildContext context) {
    final avatarContainer = Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: 80.0,
      child: Center(
        child: Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(userAvatar),
              fit: BoxFit.fill,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black54,
                blurRadius: 3.0,
                offset: Offset(2.0, 2.0)
              ),
            ]
          ),
        ),
      ),
    );

    final infoContainer = Container(
      width: MediaQuery.of(context).size.width * 0.55,
      height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              userName,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              "Experience: " + userExperience.toString() + " years.",
              style: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(163, 163, 163, 1.0),
              ),
            ),
          )
        ],
      ),
    );

    final buttonContainer = Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 80.0,
      child: Center(
        child: Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: userMessages > 0 ? Color.fromRGBO(0, 247, 255, 1.0) : Color.fromRGBO(212, 212, 212, 1.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 3.0,
                    offset: Offset(2.0, 2.0)
                ),
              ]
          ),
          child: InkWell(
            child: Icon(
              Icons.email,
              color: userMessages > 0 ? Colors.white : Color.fromRGBO(77, 77, 77, 1.0),
              size: 28.0,
            ),
          ),
        ),
      ),
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80.0,
      child: Row(
        children: [
          avatarContainer,
          infoContainer,
          buttonContainer,
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(222, 222, 222, 1.0),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}