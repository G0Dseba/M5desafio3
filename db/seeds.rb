# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.create([
  { name: 'Inception', synopsis: 'A thief who steals corporate secrets...', director: 'Christopher Nolan' },
  { name: 'The Matrix', synopsis: 'A computer hacker learns...', director: 'Lana Wachowski, Lilly Wachowski' }
])

Serie.create([
  { name: 'Breaking Bad', synopsis: 'A high school chemistry teacher...', director: 'Vince Gilligan' },
  { name: 'Game of Thrones', synopsis: 'Nine noble families fight for control...', director: 'David Benioff, D.B. Weiss' }
])

DocumentaryFilm.create([
  { name: 'Planet Earth', synopsis: 'A documentary series...', director: 'Alastair Fothergill' },
  { name: 'The Social Dilemma', synopsis: 'Explores the dangerous human impact...', director: 'Jeff Orlowski' }
])
