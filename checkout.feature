            #language pt


            Funcionalidade: Concluir cadastro
            Como cliente da EBAC-SHOP
            Eu quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu estou na página de cadastro

            Cenário: Cadastro com todos os dados obrigatórios
            Quando eu insiro todos os dados obrigatórios
            Então eu devo ser cadastrado com sucesso
            E eu devo ser redirecionado para a página de finalização de compra

            Cenário: E-mail com formato inválido
            Quando eu insiro um e-mail com formato inválido
            E eu clico no botão "Cadastrar"
            Então eu devo ver uma mensagem de erro informando que o e-mail é inválido

            Esquema do Cenário: Campos obrigatórios vazios
            Quando eu tento cadastrar com campos obrigatórios vazios: <campo>
            Então eu devo ver uma mensagem de alerta informando que todos os campos são obrigatórios

            Exemplos:
            | campo     |
            | nome      |
            | sobrenome |
            | país      |
            | endereço  |
            | cidade    |
            | CEP       |
            | telefone  |
            | e-mail    |
