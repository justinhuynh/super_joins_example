# Create four users
fluffy = User.create(name: "Fluffy")
whiskers = User.create(name: "Whiskers")
maizie = User.create(name: "Maizie")
monster = User.create(name: "Monster")

# Create a Trip, setting a User as group_leader and a User as group_treasurer
park = Trip.create(title: "To the park", location: "The park", leader: monster, treasurer: maizie)

# Add all four users to the join table
TripUser.create(trip: park, user: fluffy)
TripUser.create(trip: park, user: whiskers)
TripUser.create(trip: park, user: maizie)
TripUser.create(trip: park, user: monster)

# Do the same for another trip
pet_store = Trip.create(title: "To the pet store", location: "Mall", leader: whiskers, treasurer: fluffy)

TripUser.create(trip: pet_store, user: fluffy)
TripUser.create(trip: pet_store, user: whiskers)
TripUser.create(trip: pet_store, user: maizie)
TripUser.create(trip: pet_store, user: monster)
