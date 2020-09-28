actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", movie_id: 1 })
actor.save

actor = Actor.new({ first_name: "Tom", last_name: "Hanks", known_for: "Forrest Gump", movie_id: 2 })
actor.save

actor = Actor.new({ first_name: "Morgan", last_name: "Freeman", known_for: "Shawshank Redemption", movie_id: 3 })
actor.save

actor = Actor.new({ first_name: "Denzel", last_name: "Washington", known_for: "Training Day", movie_id: 4 })
actor.save

# 10.times do
#   Actor.create({
#     first_name: FFaker::Name.first_name,
#     last_name: FFaker::Name.last_name,
#     known_for: FFaker::Movie.title,
#   })
# end

movie = Movie.new({ title: "Top Gun", year: 1984, plot: "A hotshot ace pilot gets sent to an elite school, where he learns about life, love and loss in the action-packed drama." })
movie.save

movie = Movie.new({ title: "Predator", year: 1987, plot: "An elite group of soldiers is pitted against an alien who hunts humans for sport." })
movie.save

movie = Movie.new({ title: "Rocky", year: 1976, plot: "A small-time boxer from working-class Philadelphia, is arbitrarily chosen to take on the reigning world heavyweight champion." })
movie.save

movie = Movie.new({ title: "Braveheart", year: 1995, plot: "William Wallace is the medieval Scottish patriot who is spurred into revolt against the English when the love of his life is slaughtered." })
movie.save
