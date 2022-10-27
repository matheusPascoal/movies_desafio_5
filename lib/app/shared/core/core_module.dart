import 'package:flutter_modular/flutter_modular.dart';
import 'package:uno/uno.dart';

import '../../modules/app_movie/external/http_client/http_client.dart';
import '../../modules/app_movie/external/http_client/uno_http_client.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Uno(), export: true),
        Bind<HttpClient>((i) => UnoHttpClient(i()), export: true),
      ];
}
