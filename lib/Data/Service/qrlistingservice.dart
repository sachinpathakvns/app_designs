import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:app_designs/Data/Model/qrlistingdata.dart';

class ApiDemo {
  Future<List<QrListingData>?> getqrlist() async {
    final response = await https.get(
      Uri.parse(
          'https://gist.githubusercontent.com/sachinpathakvns/178a679d5365536ed45cd6ee2afe5d06/raw/86a5ab9718a424b0c43249cc2fad5f008439701f/Doctorsdata'),
      // headers: {
      //   HttpHeaders.authorizationHeader: Utilitiesdoctordata.idtoken,
      // },
    );
    dynamic data = jsonDecode(response.body);
    print(response.statusCode);
    dynamic data3 = data['data'];
    print(data3);
    List<QrListingData> list = qrListingDataFromJson(jsonEncode(data3));
    for (int i = 0; i <= list.length - 1; i++)
      return list;
  }
}