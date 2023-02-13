puts 'Cadastrando lista de tipos do  contatos'
kinds = ['Amigo', 'Conhecido', 'Colega', 'Familiar','Outro']
kinds.each do |kind|
  Kind.find_or_create_by(
    description: kind.to_s
  )
end
puts 'Lista de tipos de contatos cadastrada com sucesso!'