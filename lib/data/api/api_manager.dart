class ApiManager {
  static ApiManager? _instance;
  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  ApiManager._();
}
