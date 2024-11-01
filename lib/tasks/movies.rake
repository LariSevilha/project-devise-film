# frozen_string_literal: true

namespace :populate do
  desc 'Popula banco filme'
  task movies: :environment do
    10.times do
      Movie.create(
        title: Faker::Movie.title,
        descript: Faker::Name.name,
        release_year: Faker::Date.between(from: '1900-01-01', to: Time.zone.today)
      )
    end
    puts 'Filmes Criados com sucesso'
  end

  desc 'popular banco com usuário'
  task users: :environment do
    10.times do
      User.create(
        email: Faker::Internet.email,
        password: '123456'
      )
    end
    puts 'Usuarios criados com sucesso'
  end
end
