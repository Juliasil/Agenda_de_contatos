puts 'Cadastrando lista de tipos do  contatos'
kinds = ['Amigo', 'Conhecido', 'Colega', 'Familiar','Outro']
kinds.each do |kind|
  Kind.find_or_create_by(
    description: kind.to_s
  )
end
puts 'Lista de tipos de contatos cadastrada com sucesso!'

puts 'Cadastrando usuário padrão.'
Admin.create!(
  email: 'admin@admin.com.br',
  password: '123456',
  password_confimation: '123456'
)
puts ' Usuário padrão cadastrado com sucesso.'