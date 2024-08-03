            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu estou na pagina de  login


            Cenário: login com credenciais válidas
            Dado que eu tenho uma conta válida
            Quando eu digitar o usuário e senha correta
            E clico no botão "login"
            Então eu devo ser redirecionado para a tela de checkout
            E eu devo ver uma mensagem de boas vindas

            Esquema do Cenário: login com credenciais inválidas
            Quando eu digitar o <usuario> ou a <senha> incorretos
            E eu clico no botão "login"
            Então deve exibir a <mensagem> de alerta  "Usuário ou senha inválida"

            Exemplos:

            | email                   | senha        |
            | usuario@exemplo.com     | senhaErrada  |
            | emailErrado@exemplo.com | senhaCorreta |
            | emailErrado@exemplo.com | senhaErrada  |


