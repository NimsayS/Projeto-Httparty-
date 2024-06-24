# language: pt

Funcionalidade: Usuarios 

@cenario_login_user
Esquema do Cenario: Fazer login do usuario
Dado que o usuario faca o login
Quando ele envia as informacoes
Entao o usuario deve efetuar o login <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_buscar_user
Esquema do Cenario: Buscar informacoes de usuarios
Dado que o funcionario consulte informacoes de todos os usuarios
Quando ele realizar a pesquisa de usuarios
Entao uma lista de usuarios deve retornar <codigo_esperado>
  Exemplos:
  | codigo_esperado |
  |    200          |


@cenario_cadastrar_user
Esquema do Cenario: Cadastrar usuario
Dado que o usuario se cadastre 
Quando ele envia suas informacoes
Entao o usuario deve ser cadastrado  <codigo_esperado> 
  Exemplos:
  | codigo_esperado |
  |    201          |



@cenario_deletar_user
Esquema do Cenario: Deletar usuario
Dado que o usuario queira deletar sua conta 
Quando ele envia a identificacao
Entao o usuario deve ser deletado <codigo_esperado> 
  Exemplos:
  | codigo_esperado |
  |    200          |

@cenario_erro_deletar
Esquema do Cenario: Nao Deletar usuario
Dado que o usuario queira deletar sua conta porem tem carrinho cadastrado
Quando ele envia a identificacao2
Entao o usuario nao deve ser deletado <codigo_esperado> 
  Exemplos:
  | codigo_esperado |
  |    400          |

@cenario_atualizar_user
Esquema do Cenario: Atualizar usuario
Dado que o usuario altere informacoes da sua conta 
Quando ele envia as novas informacoes
Entao as informacoes devem ser alteradas <codigo_esperado> 
  Exemplos:
  | codigo_esperado |
  |    200          |