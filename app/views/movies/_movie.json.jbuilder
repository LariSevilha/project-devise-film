json.extract! movie, :id, :title, :descript, :release_year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
