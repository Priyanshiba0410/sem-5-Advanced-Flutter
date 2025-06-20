import 'package:advanced_flutter/lab3/list_crud_model.dart';
import '../utils/import_export.dart';
import 'list_crud_controller.dart';

class ListCrudView extends StatefulWidget {
     ListCrudView({super.key});
  final ListController controller = ListController();
  // final ListController controller;
  @override
  State<ListCrudView> createState() => _ListCrudViewState();
}

class _ListCrudViewState extends State<ListCrudView> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  int? editngId;

  void _clearFields() {
    _nameController.clear();
    _emailController.clear();
    _mobileController.clear();
    editngId = null;
  }

  void _saveUser() {
    final name = _nameController.text;
    final email = _emailController.text;
    final mobile = _mobileController.text;

    if (name.isEmpty || email.isEmpty || mobile.isEmpty) return;

    if (editngId != null) {
      widget.controller.UpdateUser(editngId!, name, email, mobile);
    }
    else{
      widget.controller.addUser( name, email, mobile);
    }
    setState(() {

    });
    _clearFields();
  }

  void _editUser(ListModel user) {
    _nameController.text = user.name;
    _emailController.text = user.email;
    _mobileController.text = user.mobile;
    editngId = user.id;
  }

  void _deletUser(int id) {
    widget.controller.DeleteUser(id);
    setState(() {

    });
    _clearFields();
  }

  @override
  Widget build(BuildContext context) {
    final users = widget.controller.dataList;
    return Scaffold(
        appBar: AppBar(title: Text("CRUD using LIst"),
        backgroundColor: Colors.pinkAccent.shade100,),

        body: Padding(
        padding: EdgeInsets.all(12),
    child:Column(
    children: [
    TextField(
    controller: _nameController,
    decoration:InputDecoration(labelText: "Name")
    ),
    TextField(
      controller: _emailController,
      decoration: InputDecoration(labelText: 'Email'),
    ),
    TextField(
      controller: _mobileController,
      decoration: InputDecoration(labelText: 'Mobile'),
      keyboardType: TextInputType.phone,
    ),
    SizedBox(height: 10),
      ElevatedButton(
      onPressed: _saveUser,
      child: Text(editngId == null ? 'Add User' : 'Update User'),
      ),
    SizedBox(height: 20),
    Expanded(
      child: ListView.builder(
      itemCount: users.length,
      itemBuilder: (_, index) {
      final user = users[index];
      return Card(
        child: ListTile(
          title: Text(user.name),
          subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                          Text("Email: ${user.email}"),
                          Text("Mobile: ${user.mobile}"),

    ],
    ),

          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit, color: Colors.blue),
                onPressed: () => _editUser(user),
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => _deletUser(user.id),
              ),
            ],
          ),
        ),
      );
      },
      ),
    ),
    ],
    ),
        ),
    );
  }
}