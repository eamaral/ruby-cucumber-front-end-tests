Quando('cadastro usuario') do
  user.load
  user.preencher_usuario
  sleep(2)
end

Entao('valido que o usuario foi cadastrado') do
  expect(user.lbl_usuario_criado.text).to eq 'Usuário Criado com sucesso'
end