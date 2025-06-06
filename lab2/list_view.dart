import 'package:advanced_flutter/lab2/list_controller.dart';
import 'package:flutter/material.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});
  @override
  State<UserListView> createState() => _UserListViewState();
}
class _UserListViewState extends State<UserListView> {
  final UserController _controller = UserController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" Favorite List",style:
        TextStyle(backgroundColor: Colors.pink,fontSize: 50),)),
      body: ListView.builder(
        itemCount: _controller.users.length,
        itemBuilder: (context, index) {
          final user = _controller.users[index];
          return ListTile(
            title: Text(user.name),
            trailing: IconButton(
              icon: Icon(
                user.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: user.isFavorite ? Colors.red : null,
              ),
              onPressed: () {
                setState(() {
                  _controller.toggleFavorite(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}