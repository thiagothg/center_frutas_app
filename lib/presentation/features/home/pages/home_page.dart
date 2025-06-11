import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../domain/entities/user.dart';
import '../../../routes/app_router.dart';
import '../controllers/home_controller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(homeControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              context.go(AppRoutes.login);
            },
          ),
        ],
      ),
      body: Center(
        child:
            user == null
                ? ElevatedButton(
                  onPressed: () {
                    ref
                        .read(homeControllerProvider.notifier)
                        .state = const User(id: '1', name: 'Alice');
                  },
                  child: const Text('Carregar Usuário'),
                )
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bem-vindo, ${user.name}!'),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(homeControllerProvider.notifier).state = null;
                      },
                      child: const Text('Logout'),
                    ),
                  ],
                ),
      ),
    );
  }
}
