import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/model.dart';

class Api {
  Future<Model> fetchModel() async {
    final response = await http.get(Uri.parse('URL'));

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return Model.fromJson(jsonBody);
    } else {
      throw Exception('Falha ao carregar os dados da API');
    }
  }
}