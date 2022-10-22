abstract class SystemError implements Exception {
  final String message;
  SystemError(this.message);
}

class DatasourceError extends SystemError {
  DatasourceError(super.message);
}

class HttpError extends SystemError {
  HttpError(super.message);
}
