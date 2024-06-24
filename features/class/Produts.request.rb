class Produts_request
    def find_produts
        Users.get('/produtos')
    end

    def create_produts
        nome = Faker::Commerce.product_name
        preco = Faker::Commerce.price(range: 100..1000, as_string: false)  
        descricao = Faker::Lorem.sentence(word_count: 10)  
        quantidade = Faker::Number.between(from: 1, to: 1000)  
        Users.post('/produtos', body: {

            "nome": nome,
            "preco": preco,
            "descricao": descricao,
            "quantidade": quantidade
            
         }.to_json)
    end


end