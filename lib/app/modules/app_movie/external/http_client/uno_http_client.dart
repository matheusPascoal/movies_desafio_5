import 'package:uno/uno.dart';

import '../../domain/errors/errors.dart';
import 'http_client.dart';

class UnoHttpClient implements HttpClient {
  final Uno _uno;

  UnoHttpClient(this._uno);

  @override
  Future<List<Map<String, dynamic>>> get(String url) async {
    try {
      final response = await _uno.get(url);

      return response.data;
    } on UnoError catch (e) {
      throw HttpError('Ocorreu um erro na resposta do servidor: ${e.message}');
    }
  }
}
