import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<String> get(String text) async {
    final res = await http.post(
      Uri.parse('https://diopvuodnverowgmiksd.supabase.co/functions/v1/askai'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'query': text,
      }),
    );
    return res.body;
  }
}
