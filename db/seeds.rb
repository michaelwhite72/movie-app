# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

# actor = Actor.new({first_name: "Tom", last_name: "Hanks", known_for: "Forrest Gump"})
# actor.save

# actor = Actor.new({first_name: "Morgan", last_name: "Freeman", known_for: "Shawshank Redemption"})
# actor.save

# actor = Actor.new({first_name: "Denzel", last_name: "Washington", known_for: "Training Day"})
# actor.save

20.times do
  Actor.create({
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    known_for: FFaker::Movie.title
  })
end


