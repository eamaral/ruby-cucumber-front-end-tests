class User < SitePrism::Page
    set_url '/users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :btn_criar, 'input[value="Criar"]'
    element :lbl_usuario_criado, '#notice'

    def preencher_usuario
        nome.set 'Erik'
        sobrenome.set 'Fernandes'
        email.set 'erik.fernandes87@gmail.com'
        endereco.set 'Rua Paraíba'
        universidade.set 'anhanguera'
        profissao.set 'techlead'
        genero.set 'Masculino'
        idade.set '34'
        btn_criar.click
    end


end