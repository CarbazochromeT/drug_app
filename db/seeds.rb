require "./db/seeds/symptom.rb"
require "./db/seeds/drug_ingredient.rb"
require "./db/seeds/drug_symptom.rb"

User.create!([
  {email: "admin@admin.com", crypted_password: "$2a$10$F3NGuIMFzkOJtNC3px5KqODE7DibeQibLSFyBqV1KolOmtWqI2i9i", salt: "rXTVvrLTKnP-i7ZP5o1z", username: "アルセウス", admin: true}
])

