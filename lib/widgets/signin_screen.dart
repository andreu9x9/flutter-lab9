import 'package:flutter/material.dart';
import './reset_password_screen.dart';
import './signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизація'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
                  width: 160,
                ),
              ),
              const SizedBox(height: 32.0),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Логін або Email',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16.0),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 24.0),

              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return const AlertDialog(
                        title: Text('Успіх'),
                        content: Text("Авторизацію виконано успішно!"),
                      );
                    },
                  );
                },
                child: const Text("Увійти"),
              ),
              const SizedBox(height: 12.0),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen(),
                    ),
                  );
                },
                child: const Text('Забули пароль?'),
              ),
              const SizedBox(height: 8.0),

              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: const Text('Створити акаунт (Реєстрація)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}