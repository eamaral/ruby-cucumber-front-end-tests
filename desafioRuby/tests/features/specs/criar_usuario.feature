#language: pt

Funcionalidade: Criar Usuario

-Eu como usuario
-Quero me cadastrar com sucesso

@criar_usuario
Cenario: Cadastrar usuario com sucesso
    Quando cadastro usuario
    Entao valido que o usuario foi cadastrado
