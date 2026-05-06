import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = false;
  bool _isLoading = false;

  bool get isLogin => _isLogin;
  bool get isLoading => _isLoading;

  Future<void> logIn({required String email, required String password}) async {
    try {
      _isLoading = true;
      notifyListeners();

      // هنا بعدين تحط Firebase أو API
      await Future.delayed(const Duration(seconds: 1));

      _isLogin = true;
    } catch (e) {
      _isLogin = false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void logOut() {
    _isLogin = false;
    notifyListeners();
  }
}
