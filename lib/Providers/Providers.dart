import 'package:app_designs/Providers/apiProvider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: ((context) => Getlistspeciality())),
  // ChangeNotifierProvider(create: ((context) => ThemeManager())),
  // ChangeNotifierProvider(create: ((context) => BottomNavBarProvider())),
  // ChangeNotifierProvider(create: ((context) => DoctorOrHospitalProvider())),
  // ChangeNotifierProvider(create: ((context) => Getlistspeciality())),
  // ChangeNotifierProvider(create: ((context) => GetDiseaseList())),
];