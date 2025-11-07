# App FXS

Aplicação Flutter de controle de despesas financeiras com integração Firebase.

## Funcionalidades

- Rastreamento de receitas e despesas
- Autenticação de usuário (login/registro)
- Dashboard com visão geral financeira
- Integração com banco de dados Firestore
- Gerenciamento de transações

## Como Começar

1. Instale as dependências:
   ```bash
   flutter pub get
   ```

2. Configure o Firebase:
   - Adicione seus arquivos de configuração do Firebase
   - Configure o banco de dados Firestore

3. Execute a aplicação:
   ```bash
   flutter run
   ```

## Estrutura do Projeto

- `lib/main.dart` - Ponto de entrada da aplicação
- `lib/screens/` - Telas da aplicação (login, registro, dashboard, etc.)
- `lib/models/` - Modelos de dados
- `lib/services/` - Serviços Firebase e lógica de negócio

## Tecnologias Utilizadas

- Flutter SDK
- Firebase (Firestore)
- UUID para identificadores únicos
