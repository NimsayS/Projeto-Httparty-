# frozen_string_literal: true

# Login usuário

Dado('que o usuario faca o login') do
  @post_url = Users_request.new
  @assert= Assertions.new
 end
 
 Quando('ele envia as informacoes') do
  @login_users = @post_url.login("daron.stracke@example.com","uQapZnuW8ANwKVV")
 
 end
 
 Entao('o usuario deve efetuar o login {int}') do |codigo_esperado|
  puts @login_users
  @assert.request_sucess(@login_users.code,@login_users.message)
  @assert.mensagem_login_sucesso(@login_users["message"])
  puts @login_users
 end
 
# Pegar informações de user

Dado('que o funcionario consulte informacoes de todos os usuarios') do
  @get_users = Users_request.new
  @assert = Assertions.new
  
   
end

Quando('ele realizar a pesquisa de usuarios') do
   @list_users= @get_users.find_user
 end
 

Entao('uma lista de usuarios deve retornar {int}') do |codigo_esperado|
  @assert.request_sucess(@list_users.code,@list_users.message)
 end

# Cadastrar usuário

Dado('que o usuario se cadastre') do
 @post_url = Users_request.new
 @assert= Assertions.new
end

Quando('ele envia suas informacoes') do
 @create_users = @post_url.create_user
 puts @create_users

end

Entao('o usuario deve ser cadastrado  {int}') do |codigo_esperado|
 puts @create_users
 @assert.request_created(@create_users.code,@create_users.message)
 @assert.mensagem_cadastro_sucesso(@create_users["message"])
 puts @create_users
end

# Atualizar usuário 

Dado('que o usuario altere informacoes da sua conta') do
  @request= Users_request.new
  @assert= Assertions.new

 end
 
 Quando('ele envia as novas informacoes') do
  @update_user= @request.uptade_user_request(@request.find_user['usuarios'][0]['_id'])


 end
 
 Entao('as informacoes devem ser alteradas {int}') do |codigo_esperado|
    puts @update_user
    @assert.request_sucess(@update_user.code,@update_user.message)
    @assert.mensagem_atualizar_sucesso(@update_user["message"])
    puts @update_user
  
 
 end


#Deletar usuario


 Dado('que o usuario queira deletar sua conta') do
  @request_delete=Users_request.new
  @assert = Assertions.new
end

Quando('ele envia a identificacao') do
  @apaga_user= HTTParty.delete('http://localhost:3000/usuarios/77NvG19JwVpA8rBe') #Aqui ta estático pois pouco usuários nao tem um carrinho por isso que não utilizei o metodo que usei nos outros

end


Entao('o usuario deve ser deletado {int}') do |codigo_esperado|
  @assert.request_sucess(@apaga_user.code,@apaga_user.message)
  @assert.mensagem_deletar_sucesso(@apaga_user["message"])
    puts @apaga_user

end

# Carrinho cadastrado

Dado('que o usuario queira deletar sua conta porem tem carrinho cadastrado') do
  @request_delete=Users_request.new
  @assert = Assertions.new
end

Quando('ele envia a identificacao2') do
  @apaga_user= @request_delete.delete_user(@request_delete.find_user['usuarios'][0]['_id']) #aqui como a maior parte tem um carrinho coloquei o metodo pra esse

end


Entao('o usuario nao deve ser deletado {int}') do |codigo_esperado|
  @assert.request_fail(@apaga_user.code,@apaga_user.message)
  @assert.mensagem_deletar_erro(@apaga_user["message"])
    puts @apaga_user

end
