Genre.create!([
  { name: "Action" },
  { name: "Drama" },
  { name: "Historical" },
  { name: "Sci-Fi" },
])

Movie.create!([
  { title: "Predator", year: 1987, plot: "An elite group of soldiers is pitted against an alien who hunts humans for sport.", director: nil, english: true },
  { title: "Rocky", year: 1976, plot: "A small-time boxer from working-class Philadelphia, is arbitrarily chosen to take on the reigning world heavyweight champion.", director: nil, english: true },
  { title: "Braveheart", year: 1995, plot: "William Wallace is the medieval Scottish patriot who is spurred into revolt against the English when the love of his life is slaughtered.", director: nil, english: true },
  { title: "Top Gun", year: 1984, plot: "A hotshot ace pilot gets sent to an elite school, where he learns about life, love and loss in the action-packed drama.", director: "Tony Scott", english: true },
])

Actor.create!([
  { first_name: "Tom", last_name: "Hanks", known_for: "Forrest Gump", gender: "M", age: 63, movie_id: 2 },
  { first_name: "Morgan", last_name: "Freeman", known_for: "Shawshank Redemption", gender: "M", age: 75, movie_id: 3 },
  { first_name: "Denzel", last_name: "Washington", known_for: "Training Day", gender: "M", age: 68, movie_id: 4 },
  { first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "M", age: 48, movie_id: 1 },
])

Genre.create!([
  { name: "Action" },
  { name: "Drama" },
  { name: "Historical" },
  { name: "Sci-Fi" },
])

MovieGenre.create!([
  { genre_id: 1, movie_id: 1 },
  { genre_id: 2, movie_id: 1 },
  { genre_id: 4, movie_id: 2 },
  { genre_id: 1, movie_id: 2 },
  { genre_id: 2, movie_id: 3 },
  { genre_id: 1, movie_id: 3 },
  { genre_id: 1, movie_id: 4 },
  { genre_id: 3, movie_id: 4 },
  { genre_id: 3, movie_id: 1 },
])
User.create!([
  { name: "stacy", email: "stacy@gmail.com", password_digest: "$2a$12$1jQ6bom/81YPxUuMPZYybeG7MSP7od65Fw9H1AH8eDKpHePXikwmO", admin: false },
  { name: "mike", email: "mike@gmail.com", password_digest: "$2a$12$uLvAM1bAZG5Dg9MFftKsc.sYWsPuepHWfWxFK1YyTiaOS5FA8lG4G", admin: true },
])
