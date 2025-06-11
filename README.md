# center_frutas_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter pub run build_runner watch --delete-conflicting-outputs

dart run build_runner watch --delete-conflicting-outputs




# Estrtura 

lib/
│
├── core/                     # Lógicas reutilizáveis e helpers
│   ├── constants/            # Constantes globais
│   ├── exceptions/           # Exceções e erros customizados
│   ├── extensions/           # Extensões úteis
│   ├── services/             # Serviços (ex: API, Auth)
│   └── utils/                # Funções utilitárias
│
├── data/                     # Camada de dados
│   ├── models/               # Modelos (ex: User, Product)
│   ├── datasources/          # Datasources (ex: API, local)
│   └── repositories/         # Implementações dos repositórios
│
├── domain/                   # Lógica de negócio (Clean Architecture)
│   ├── entities/             # Entidades puras
│   ├── repositories/         # Abstrações (interfaces)
│   └── usecases/             # Casos de uso
│
├── presentation/             # Camada de UI
│   ├── routes/               # Definições de rotas
│   ├── widgets/              # Widgets reutilizáveis
│   ├── themes/               # Temas e estilos
│   └── features/             # Cada feature em seu módulo
│       └── home/
│           ├── pages/
│           ├── bloc/ ou cubit/ ou controller/
│           └── widgets/
│
└── main.dart                 # Ponto de entrada da aplicação


💻 Stack Recomendada (Atualizada 2025)

Gerenciamento de estado
Riverpod 3.0+ → mais moderno, seguro e modular que Provider.
flutter_riverpod ou hooks_riverpod se quiser usar Flutter Hooks.
Camada de dados
Dio para chamadas HTTP (ou http se quiser algo mais simples).
Freezed + JsonSerializable para modelos imutáveis e serialização.
Isar (ou Hive) para armazenamento local (offline).
Gerenciamento de dependências
riverpod (já cobre isso bem)
Ou get_it se preferir algo separado do estado.
Navegação
GoRouter → moderno, suporta deep linking, animações e navegação declarativa.
Outros
flutter_gen → geração de assets e fonts com segurança de tipo.
intl para internacionalização.
equatable para comparações entre modelos.
mocktail para testes.
flutter_lints → boas práticas de linting.
