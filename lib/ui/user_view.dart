import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_dio/logic/user_view_model.dart';
import 'package:provider/provider.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  void initState() {
    super.initState();

    Provider.of<UserViewModel>(context, listen: false).fetchData();
  }

  @override
    Widget build(BuildContext context) {
    return Consumer<UserViewModel>(
      builder: (context, userData, child) {
        if (userData.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (userData.userModel == null) {
          return const Center(child: Text('No data available'));
        } else {
          return ListView.builder(
            itemCount: userData.userModel!.length,
            itemBuilder: (context, index) {
              final user = userData.userModel![index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text(user.name),
                subtitle: Text(user.email),
              );
            },
          );
        }
      },
    );
  }
}
