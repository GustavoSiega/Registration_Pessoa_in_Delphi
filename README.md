# Tela Cadastro de Pessoas 

O projeto tem como objetivo desenvolver uma tela de cadastro de pessoas utilizando a linguagem Delphi, integrada a um banco de dados. Adicionalmente, foi implementada uma API para permitir o preenchimento automático dos campos de endereço.

##  Componentes Principais:  
### Interface do Usuário (UI):  
- Formulário Principal: Contém campos para a entrada de dados do usuário, como nome, endereço, telefone e e-mail. 
- Labels e Edit Boxes: Labels para descrever cada campo e Edit Boxes para a entrada dos dados. 
- Botões: Botões para ações como "Confirmar", "Cancelar" e "Editar" e "Deletar".
- Lista de Cadastros: Utilizado o componente TDBGrid, onde irá listar todos os cadastros que estão cadastrados na tabela.
 
### Banco de Dados:  
- Conexão com o Banco de Dados: Utiliza componentes Delphi, como TFDConnection, TFDTable, TDataSource, para conectar-se ao banco de dados. 
 
### Lógica de Aplicação:  
- Validação de Dados: Verifica se todos os campos obrigatórios foram preenchidos e se os dados inseridos estão no formato correto antes de salvar. Processamento de Dados: Inclui a lógica para inserir, atualizar e validar dados no banco de dados. 
 
### Tratamento de Erros:  
- Mensagens de Erro: Exibe mensagens de erro apropriadas caso ocorra algum problema com a validação dos dados ou com a conexão ao banco de dados. Manuseio de Exceções: Implementa tratamento de exceções para garantir que a aplicação não trave em caso de erros inesperados. 
 
### Tecnologias Utilizadas:  
- Delphi RAD Studio: Ambiente de desenvolvimento para criar a interface gráfica e a lógica de aplicação. 
 
### Banco de Dados Relacional: Pode ser SQL Server, MySQL, PostgreSQL, ou outro sistema de gerenciamento de banco de dados compatível. 
- Componentes Delphi: TEdit, TDBEtid, TLabel, TButton, TADOConnection, TDataSource, TDataSet, etc. 
 
### Benefícios do Projeto:  
- Facilidade de Uso: Interface gráfica intuitiva e amigável para o usuário final. 
- Validação Imediata: Garantia de que os dados inseridos são válidos antes de serem salvos. 
- Integração com Banco de Dados: Armazenamento seguro e eficiente das informações de cadastro.
