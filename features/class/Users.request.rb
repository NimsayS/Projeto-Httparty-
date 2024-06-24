class Users_request
    def find_user
        Users.get('/usuarios')
    end

    def create_user
        nome = Faker::Name.name
        email = Faker::Internet.email(domain: 'example.com')
        password = Faker::Internet.password
        Users.post('/usuarios', body: {
            "nome": nome,
            "email": email,
            "password": password,
            "administrador": "true"
         }.to_json)
    end

    def uptade_user_request(id)
        nome = Faker::Name.name
        email = Faker::Internet.email(domain: 'example.com')
        password = Faker::Internet.password
        Users.put('/usuarios/'+ id.to_s,   body: {
            "nome": nome,
            "email": email,
            "password": password,
            "administrador": "true"
         }.to_json)
        end
    
    def delete_user(id)
        Users.delete('/usuarios/'+ id.to_s)
    end

    def login(email,password)
        Users.post('/login', body: {
            "email": email,
            "password": password
         }.to_json)
     end
end