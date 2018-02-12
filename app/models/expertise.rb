class Expertise < ApplicationRecord
  has_many :profil_expertises
  has_many :profils, through: :profil_expertises
end
