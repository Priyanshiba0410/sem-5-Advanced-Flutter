import 'list_crud_model.dart';

class ListController {
  List<ListModel> _dataList = [];
  int _idCounter = 0;

  // Read
  List<ListModel> get dataList => _dataList;


  // add
  void addUser(String name, String email, String mobile) {
    _dataList.add(
      ListModel(id: _idCounter++, name: name, email: email, mobile: mobile),
    );
  }


  //   update
  void UpdateUser(int id, String name, String email, String mobile) {
    int index = _dataList.indexWhere((item) => item.id == id);
    if (index != -1) {
      _dataList[index] =
          ListModel(
              id: id,
              name: name,
              email: email,
              mobile: mobile
          );
    }
  }

  // delete
  void DeleteUser(int id){
    _dataList.removeWhere((item)=>item.id==id);
  }
    ListModel? getItemById(int id){
    return _dataList.firstWhere((item)=>item.id==id,orElse: ()=> null as ListModel);
    }
}
