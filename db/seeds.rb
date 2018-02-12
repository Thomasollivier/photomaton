# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profil.create(name: "Paul", lastname: "koukou", phone: "0765534276", mail: "pkoukouyanis@okoni.fr", organisation: "Okoni", job: "ingénieur", expertise: "se déplacer", interest: "j'aime les bonbons")
Profil.create(name: "Emma", lastname: "lelond", phone: "0687546578", mail: "elelond@okoni.fr", organisation: "Okoni", job: "designer produit", expertise: "jouer", interest: "pamplemousse et patapluie")
Profil.create(name: "Pierre", lastname: "baudry", phone: "0672539376", mail: "pbaudry@okoni.fr", organisation: "Okoni", job: "patron", expertise: "gouverner", interest: "Le vin rouge au frigo")

expertises = %w(Déplacer Jouer S'ouvrir Habiter Gouverner Ressourcer Travailler Autre)

expertises.each do |expertise|
  Expertise.create!(name: expertise)
end
