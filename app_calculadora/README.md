# App Calculadora

Aplicação de calculadora rica em recursos construída com Flutter, suportando alternância de tema e operações matemáticas avançadas.

## Funcionalidades

- Operações matemáticas básicas e avançadas
- Suporte a temas claro e escuro
- Persistência de tema usando shared preferences
- Interface moderna e intuitiva
- Teclado numérico responsivo
- Avaliação de expressões

## Como Começar

1. Instale as dependências:
   ```bash
   flutter pub get
   ```

2. Execute a aplicação:
   ```bash
   flutter run
   ```

## Estrutura do Projeto

- `lib/main.dart` - Ponto de entrada da aplicação com configuração do provedor de tema
- `lib/screens/calculator.dart` - Tela principal da calculadora
- `lib/widgets/` - Componentes de UI reutilizáveis
- `lib/services/` - Lógica de negócio e gerenciamento de estado
- `lib/ui/` - Componentes de UI como AppBar e alternador de tema

## Tecnologias Utilizadas

- Flutter SDK
- Provider (Gerenciamento de Estado)
- Theme Provider (Gerenciamento de Tema)
- Shared Preferences (Persistência de Dados)
- Math Expressions (Avaliação de Expressões)
