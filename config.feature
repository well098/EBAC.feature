            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu estou na página de configuração do produto

            Cenário: Seleções obrigatórias de cor, tamanho e quantidade
            Quando eu tento adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
            Então eu devo ver uma mensagem de erro informando que todas as seleções são obrigatórias

            Cenário: Limite de quantidade por venda
            Dado que eu selecionei a cor, tamanho e quantidade
            Quando eu tento adicionar mais de 10 unidades do produto ao carrinho
            Então eu devo ver uma mensagem de erro informando que o limite é de 10 produtos por venda

            Cenário: Limpar configurações
            Dado que eu selecionei a cor, tamanho e quantidade
            Quando eu clico no botão "Limpar"
            Então as seleções devem voltar ao estado original
            E o produto não deve ser adicionado ao carrinho

            Esquema do Cenário: Configurar produto com sucesso
            Dado que eu selecionei a cor <cor>, tamanho <tamanho> e quantidade <quantidade>
            Quando eu clico no botão "Adicionar ao carrinho"
            Então o produto deve ser adicionado ao meu carrinho com as seleções feitas
            E eu devo ver uma mensagem confirmando a adição do produto

            Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | M       | 1          |
            | preto    | L       | 2          |
            | vermelho | S       | 3          |
