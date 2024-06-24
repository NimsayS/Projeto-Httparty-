# frozen_string_literal: true


# Pegar informações de produtos

Dado('que o usuario consulte informacoes de todos os produtos') do
   @get_produtos_url = Produts_request.new
   @assert= Assertions.new
    
 end
 
Quando('ele realizar a pesquisa de produtos') do
    @list_produtos=  @get_produtos_url.find_produts
  end

  Entao('uma lista de produtos deve retornar {int}') do |codigo_esperado|
    @assert.request_sucess(@list_produtos.code,@list_produtos.message)
    end
# Cadastrar Produto


   Dado('que o usuario cadastre um produto') do
    @post_url = Produts_request.new
    @assert= Assertions.new
  end
  
  Quando('ele coloca as informacoes') do
    @create_produts = @post_url.create_produts
    puts @create_produts
  end

  Entao('o cadastro deve ser concluido {int}') do |codigo_esperado|
    puts @create_produts
    @assert.request_created(@create_produts.code,@create_produts.message)
    @assert.mensagem_cadastro_sucesso(@create_produts["message"])
    puts @create_produts
  end