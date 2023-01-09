namespace :create do
  desc 'Criação de usuários'
  task users: :environment do 
    puts 'Iniciando criação de usuários'
    user_email = ['juliana@admim.com', 'roberto@admin.com']

    user_email.each do |ue| 
      Admin.create!(
        email: "#{ue}" , 
        password: 123456,
        password_confirmation: 123456
      )
    end
     puts 'Usuários criados com sucesso!'
  end
end