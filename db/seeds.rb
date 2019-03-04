Event.destroy_all
Competition.destroy_all
User.destroy_all

User.create(email: "l.b@gmail.com", password: "123456")
ssgt = User.create(email: 'ssgtwilliams@gmail.com', password: '123456')

description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

# Competitions
Competition.create(
  name: "Station Commander's Cup",
  description: description,
  image: "epi_station_logo.png",
  contain_image: true
)

Competition.create(
  name: "BFC Sporting Events",
  description: description,
  image: "bfc_crest.jpg",
  contain_image: true
)

champion_coy = Competition.create(
  name: "Champion Company",
  description: 'Every Company in 2 MERCIAN competes for the title of being crowned "Champion Company"',
  image: "champion_company.jpg",
  current_winner: "D (Support) Company, 2 MERCIAN"
)

Event.create(
  title: "5km run",
  location: 'Back gate, Episkopi Garrison',
  time: DateTime.new(2019, 02, 8, 07, 00),
  poc: "SSgt Williams",
  winner: "SSgt Williams",
  user: ssgt,
  competition: champion_coy
)
Event.create(
  title: "10km run",
  location: 'Back gate, Episkopi Garrison',
  time: DateTime.new(2019, 03, 8, 07, 00),
  poc: "SSgt Williams",
  user: ssgt,
  competition: champion_coy
)

puts "DB successfully seeded"

