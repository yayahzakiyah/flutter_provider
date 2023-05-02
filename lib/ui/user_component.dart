import 'package:flutter/material.dart';
import 'package:flutter_dio/model/user_model.dart';

class UserComponent extends StatelessWidget {
  final UserModel data;

  UserComponent(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.lightBlue,
            child: Text(
              data.id.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data.name, style: TextStyle(fontSize: 16, 
                           fontWeight: FontWeight.w600),),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Text(data.email),
                  )
                ],
              ),
            )
          )
      ]),
    );
  }
}
