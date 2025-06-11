import 'package:center_frutas_app/presentation/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('HomePage mostra botão e altera estado com Riverpod', (
    WidgetTester tester,
  ) async {
    // Monta o widget com ProviderScope
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: HomePage())),
    );

    // Verifica que botão inicial está visível
    expect(find.text('Carregar Usuário'), findsOneWidget);

    // Clica no botão para carregar usuário
    await tester.tap(find.text('Carregar Usuário'));
    await tester.pump();

    // Verifica que o nome do usuário apareceu
    expect(find.text('Bem-vindo, Alice!'), findsOneWidget);

    // Faz logout
    await tester.tap(find.text('Logout'));
    await tester.pump();

    // Deve voltar ao botão inicial
    expect(find.text('Carregar Usuário'), findsOneWidget);
  });
}
