import '../services/api_service.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<Map<String, dynamic>> login(String email, String password) async {
    return await _apiService.post('/auth/login', {'email': email, 'password': password});
  }

  Future<void> register(String name, String email, String password, String role) async {
    await _apiService.post('/auth/register', {'name': name, 'email': email, 'password': password, 'role': role});
  }
}
