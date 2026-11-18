import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Реєстрація'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
                    width: 120,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Створення нового акаунта',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Ім’я користувача',
                    prefixIcon: Icon(Icons.badge),
                  ),
                ),
                const SizedBox(height: 16),

                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Логін або Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 16),

                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: const Text('Успіх'),
                          content: const Text('Ви успішно зареєструвалися!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(dialogContext);
                                Navigator.pop(context);
                              },
                              child: const Text('ОК'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Зареєструватися'),
                ),
                const SizedBox(height: 12),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Вже є акаунт? Увійти'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}