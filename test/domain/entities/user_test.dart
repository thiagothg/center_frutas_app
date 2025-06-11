import 'package:center_frutas_app/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('User Entity', () {
    test('props devem funcionar para igualdade', () {
      const user1 = User(id: '1', name: 'Alice');
      const user2 = User(id: '1', name: 'Alice');
      const user3 = User(id: '2', name: 'Bob');

      expect(user1, user2);
      expect(user1 == user3, isFalse);
    });

    test('toString deve descrever corretamente', () {
      const user = User(id: '1', name: 'Alice');
      expect(user.toString(), contains('Alice'));
    });
  });
}
