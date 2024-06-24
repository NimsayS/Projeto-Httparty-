# language: pt

Funcionalidade: Pesquisar produtos

    
@cenario_buscar_produtos
Cenario: Buscar informacoes de produtos
Dado que o usuario consulte informacoes de todos os produtos
Quando ele realizar a pesquisa de produtos
Entao uma lista de produtos deve retornar <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |


@cenario_cadastrar_produtos
Cenario: Cadastrar Produto
Dado que o usuario cadastre um produto
Quando ele coloca as informacoes
Entao o cadastro deve ser concluido <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    201          |

