

class Assertions
    include RSpec::Matchers
    def request_sucess(response,message)
        expect(response).to eql (200)
        expect(message).to eql 'OK'
    end

    def request_created(response,message)
        expect(response).to eql (201)
        expect(message).to eql 'Created'
    end

    def request_fail(response,message)
        expect(response).to eql (400)
        expect(message).to eql 'Bad Request'
    end

    def mensagem_cadastro_sucesso(message)
        expect(message).to eql 'Cadastro realizado com sucesso'
    end

    def mensagem_login_sucesso(message)
        expect(message).to eql 'Login realizado com sucesso'
    end

    def mensagem_deletar_sucesso(message)
        expect(message).to eql 'Registro excluído com sucesso'
    end

    def mensagem_deletar_erro(message)
        expect(message).to eql 'Não é permitido excluir usuário com carrinho cadastrado'
    end

    def mensagem_atualizar_sucesso(message)
        expect(message).to eql 'Registro alterado com sucesso'
    end


end
