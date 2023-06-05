import 'package:app_designs/Data/Model/qrlistingdata.dart';
import 'package:app_designs/Data/Service/qrlistingservice.dart';
import 'package:flutter/material.dart';



class Getlistspeciality extends ChangeNotifier {
  final _service = ApiDemo();
  bool isLoading = false;
  List<QrListingData> _todos = [];
  List<QrListingData> get todos => _todos;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getqrlist();

    _todos = response!;
    int? saveimage = _todos.length;
    isLoading = false;
    notifyListeners();
  }
}

