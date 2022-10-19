json.extract! movie, :id, :movie_name, :about_movie, :movie_format, :movie_duration, :movie_language, :created_at, :updated_at
json.url movie_url(movie, format: :json)
