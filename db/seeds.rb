Competition.destroy_all
User.destroy_all

User.create(email: "l.b@gmail.com", password: "123456")

# Competitions
Competition.create(
  name: "Station Commander's Cup",
  description: "INSERT DESCRIPTION",
  image: "epi_station_logo.png",
  contain_image: true
)

Competition.create(
  name: "BFC Sporting Events",
  description: "INSERT DESCRIPTION",
  image: "bfc_crest.jpg",
  contain_image: true
)

Competition.create(
  name: "Champion Company",
  description: 'Every Company in 2 MERCIAN competes for the title of being crowned "Champion Company"',
  image: "champion_company.jpg",
  current_winner: "D (Support) Company, 2 MERCIAN"
)

puts "DB successfully seeded"
