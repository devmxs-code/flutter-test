# Aula 11 - State Management com Provider

Projeto de aprendizado demonstrando gerenciamento de estado usando Provider no Flutter.

## Conceitos Demonstrados

- Gerenciamento de estado com Provider
- ChangeNotifier e notifyListeners
- Consumer widget para escutar mudanças
- Provider.of para acessar o provider
- Separação de lógica de negócio da UI

## Funcionalidades

- Contador que incrementa, decrementa e reseta
- Estado compartilhado usando Provider
- Reatividade automática quando o estado muda

## Como Usar

1. Instale as dependências:
   ```bash
   flutter pub get
   ```

2. Execute o app:
   ```bash
   flutter run
   ```

## Estrutura do Projeto

- `lib/main.dart` - Aplicação principal com exemplo de Provider
- `CounterProvider` - Classe que gerencia o estado do contador
- `HomePage` - Interface que consome o estado

## Tecnologias Utilizadas

- Flutter SDK
- Provider (gerenciamento de estado)
- Material Design

## Aprendizados

- Como criar um ChangeNotifier
- Como usar Provider para compartilhar estado
- Como usar Consumer para reagir a mudanças
- Boas práticas de gerenciamento de estado
